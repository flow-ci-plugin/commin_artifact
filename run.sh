# ************************************************************
#
# This step will use artifact plugin to save artifact
# Please copy file or folder to FLOW_ARTIFACTS
#
#   Outputs:
#
# ************************************************************
echo "collect artifact start"

if [[ -d ${FLOW_WORKSPACE}/build/$FLOW_PROJECT_NAME ]]; then
  cd ${FLOW_WORKSPACE}/build/$FLOW_PROJECT_NAME
fi

# 上传产物
artifact_iteration $artifact_stores 0 $FLOW_ARTIFACT_URL

echo "collect artifact stop"

flow_result $?
