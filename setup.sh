MINICONDA_ENV=verif
. ~/miniconda3/etc/profile.d/conda.sh
conda create --name $MINICONDA_ENV python=3.10
conda activate $MINICONDA_ENV 
cd bin && pip3 install -r requirements.txt
cd -
make -f Makefile.tools
. ./eth.sh 