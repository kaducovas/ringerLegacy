

USER=jodafons
TAG=p0012
INDS=data16_13TeV.00302956.physics_EnhancedBias.merge.AOD.r8291_p2645 #GRL 2016
CLOUD=US

echo $INDS

#pathena dump_trigProbes.py \
#--inDS=${INDS}/ \
#--outDS=user.${USER}.${INDS}.dump_trigProbes.${TAG} \
#--nFilesPerJob=1 \
#--cloud=US --long --supStream=EXPERT,SHIFT,run_1,RUNSTAT,DEBUG 
#--goodRunListXML=${GRL}

#pathena dump_trigElectrons.py \
#--inDS=${INDS}/ \
#--outDS=user.${USER}.${INDS}.dump_trigElectrons.${TAG} \
#--nFilesPerJob=1 \
#--cloud=${CLOUD} --long --supStream=EXPERT,SHIFT,run_1,RUNSTAT,DEBUG \
##--goodRunListXML=${GRL}

#pathena run_probesAnalysis.py \
#--inDS=${INDS}/ \
#--outDS=user.${USER}.${INDS}.probesAnalysis.${TAG} \
#--nFilesPerJob=1 \
#--cloud=${CLOUD} --long --supStream=EXPERT,SHIFT,run_1,RUNSTAT,DEBUG \
#--goodRunListXML=${GRL}

pathena run_enhancedBiasAnalysis.py \
--inDS=${INDS}/ \
--outDS=user.${USER}.${INDS}.enhancedBiasAnalysis.${TAG} \
--nFilesPerJob=1 \
--cloud=${CLOUD} --long --supStream=EXPERT,SHIFT,run_1,RUNSTAT,DEBUG \
#--goodRunListXML=${GRL}









