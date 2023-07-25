const yolov5n_weight = "https://raw.githubusercontent.com/da22so/tfjs_models/main/yolov5n_web_model/model.json"

async function createDetector(){
	
	return tf.loadGraphModel(yolov5n_weight)
	
	}

let [modelWidth, modelHeight] = detector.inputs[0].shape.slice(1,3);
const input = tf.tidy(() => {
	
	return tf.image.resizeBilinear(tf.browser.fromPixels(camera.video), [modelWidth, modelHeight]).div(255.0).expandDims(0);
});

detect_res = await detector.executeAsync(input,); // detection

const[boxes, scores, classes, valid_detections] = res;
	const boxes_data = boxes.dataSync();
	const scores_data = scores.dataSync();
	const classes_data = classes.dataSync();
	const valid_detections_data = valid_detections.dataSync()[0];
	tf.dispose(res);
	//var i;
	for(i = 0; i < valid_detections_data; ++i){ // valid_detections 수만큼 물체인식
		let [x1, y1, x2, y2] = boxex_data.slice(i * 4, (i + 1) * 4); // slicing을 통한 한 물체의 bounding
		const width = x2 - x1;
		const height = y2 - y1;
		const klass = coco_names[classes_data[i]]; // class index를 coco class이름으로 변경
		const score = scores_data[i].toFixed(2);
		
		// bounding box 그리기
		this.ctx.strokeStyle = "#00FFFF";
		this.ctx.lineWidth = 4;
		this.ctx.strokeRect(x1, y1, width, height);
		
		// label과 confidence score 그리기
		this.ctx.fillStyle = "#00FFFF";
		const textWidth = this.ctx.measureText(klass + ":" + score).width;
		const textHeight = parseInt(font, 10);  // base 10
		this.ctx.fillRect(x1, y1, textWidth + 4, textHeight + 4);
		
	}




async function app(){
	camera = await Camera.setupCamera(); // 셋업
	detector = await createDetector(); // load 욜로모델
	renderPrediction(); // draw detection result into canvas
};
app();