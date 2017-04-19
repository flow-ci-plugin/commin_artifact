# ************************************************************
#
# This step will use artifact plugin to save artifact
#
#
#   Outputs:
#
# ************************************************************
echo "collect artifact start"

cd ${FLOW_WORKSPACE}/build/$FLOW_PROJECT_NAME

# 上传产物
artifact_iteration $artifact_stores 0 $FLOW_ARTIFACT_URL

echo "collect artifact stop"

flow_result $?
