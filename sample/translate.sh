#/bin/sh

# theano device
device=gpu

# path to nematus ( https://www.github.com/rsennrich/nematus )
nematus=/path/to/nematus

THEANO_FLAGS=mode=FAST_RUN,floatX=float32,device=$device,on_unused_input=warn python $nematus/nmt/translate.py \
     -m model/model.npz \
     -i data/newsdev2016.bpe.ro \
     -o data/newsdev2016.output \
     -k 12 -n -p 1