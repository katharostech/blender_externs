package;

class Main {
	static final inputDir = "xml";
	static final outputDir = "src";

	static function main() {
		var compiler = new BlenderExternGenerator(inputDir, outputDir);
		compiler.generate();
	}
}
