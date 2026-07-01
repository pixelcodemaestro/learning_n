import json
import os
from datetime import datetime

def build_report():
    # These paths assume the files are in the same directory inside the container
    template_path = '/app/template.html'
    inputs_path = '/app/inputs.json'
    output_dir = '/app/output'
    
    # Ensure output directory exists
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
        
    try:
        # Load your inputs
        with open(inputs_path, 'r') as f:
            data = json.load(f)
            
        # Load the HTML template
        with open(template_path, 'r') as f:
            html = f.read()
            
        # 1. Format Highlights safely
        highlights_list = data.get('highlights', [])
        highlights_html = "".join([f"<li>{item}</li>" for item in highlights_list])
        
        # 2. Format Tasks into Table Rows with safety fallbacks
        tasks_html = ""
        for task in data.get('tasks', []):
            status = task.get('status', 'unknown')
            status_class = status.lower().replace(" ", "-")
            text = task.get('text', 'No description provided')
            
            # Use .get() to prevent crashing if dates are missing
            start_date = task.get('start_date', 'N/A')
            end_date = task.get('end_date', 'N/A')
            
            tasks_html += f"""
        <tr>
            <td><span class="badge {status_class}">{status}</span></td>
            <td class="task-text">{text}</td>
            <td><strong style="color: #64748b;">{start_date}</strong></td>
            <td><strong style="color: #64748b;">{end_date}</strong></td>
        </tr>
            """
            
        # 3. Replace placeholders in template
        current_date = datetime.now().strftime("%A, %B %d, %Y at %I:%M %p")
        html = html.replace("{{GENERATION_DATE}}", current_date)
        html = html.replace("{{KEY_HIGHLIGHTS}}", highlights_html)
        html = html.replace("{{TASK_STATUS_ROWS}}", tasks_html)
        
        # 4. Write the final HTML file with a clean timestamp
        filename = f"Status_Report_{datetime.now().strftime('%Y%m%d_%H%M%S')}.html"
        output_path = os.path.join(output_dir, filename)
        
        with open(output_path, 'w') as f:
            f.write(html)
            
        print(f"[{datetime.now()}] Report successfully generated: {output_path}")

    except Exception as e:
        print(f"[{datetime.now()}] Error generating report: {str(e)}")

if __name__ == '__main__':
    build_report()