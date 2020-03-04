# tensorflowjs-docker
Dockerfile to build a Tensorflowjs converter image.

## Usage:
This command will start a docker container to convert a Tensorflow a tf_hub saved model to a Tensorflowjs graph model.

### Example:
The converted model will be be saved under the graphmodel sub-directory relative the ```${PWD}/model```. The container will be deleted after conversion.

Create a folder to be mounted to the container under ```/root/model/```

```
mkdir model
```
```
docker run --rm -v ${PWD}/model:/root/model \
tedhtchang/tensorflowjs_converter \
--input_format=tf_hub \
--output_format=tfjs_graph_model \
--signature_name tokens \
https://tfhub.dev/google/albert_base/3 \
/root/model/graphmodel
```
Verify ```${PWD}/model/graphmodel/model.json``` is generated.

## Reference

[Tensorflowjs Converter](https://github.com/tensorflow/tfjs/tree/master/tfjs-converter)

[TensorflowJs](https://www.tensorflow.org/js)

[Get Start with Docker](https://www.docker.com/get-started)
