- name: Install Azure Communication Email SDK
  run: npm install @azure/communication-email

- name: Send Deployment Success Email
  if: success()
  env:
    ACS_CONNECTION_STRING: ${{ secrets.ACS_CONNECTION_STRING }}
    EMAIL_FROM: ${{ secrets.EMAIL_FROM }}
    EMAIL_TO: ${{ secrets.EMAIL_TO }}
    APP_NAME: ${{ env.APP_NAME }}
    IMAGE_TAG: ${{ github.sha }}
    REPOSITORY: ${{ github.repository }}
    BRANCH: ${{ github.ref_name }}
    ACTOR: ${{ github.actor }}
    RUN_ID: ${{ github.run_id }}
  run: node .github/scripts/send-email.mjs