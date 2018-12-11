package;

import haxe.Unserializer;
import haxe.Serializer;
import haxe.xml.Fast;
import sys.FileSystem;
import sys.io.File;
import haxe.xml.Parser;
import haxe.macro.Printer;
import haxe.macro.Expr;

enum Error {
	ClassNotCached;
}

class Main {
	static final inputDir = "xml";
	static final outputDir = "src";

	static function main() {
		var compiler = new BlenderExternGenerator(inputDir, outputDir);
		compiler.generate();
	}
}
