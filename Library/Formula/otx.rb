require 'formula'

class Otx < Formula
  homepage 'http://otx.osxninja.com/'
  head 'http://otx.osxninja.com/builds/trunk/', :using => :svn

  def patches
    # fixes something small
    DATA
  end

  def install
    system 'xcodebuild SYMROOT=build'
    build = buildpath/'build/Release'
    bin.install build+"otx"
    prefix.install build+"otx.app"
  end
end

__END__
diff --git a/source/Processors/ExeProcessor.h b/source/Processors/ExeProcessor.h
index c806628..b6dce98 100644
--- a/source/Processors/ExeProcessor.h
+++ b/source/Processors/ExeProcessor.h
@@ -123,7 +123,7 @@ enum {
 #define MAX_FIELD_SPACING           50      // spaces between fields
 #define MAX_FIELD_SPACES            "                                                  "  // 50 spaces
 #define MAX_FORMAT_LENGTH           50      // snprintf() format string
-#define MAX_OPERANDS_LENGTH         1000
+#define MAX_OPERANDS_LENGTH         4000
 #define MAX_COMMENT_LENGTH          2000
 #define MAX_LINE_LENGTH             10000
 #define MAX_TYPE_STRING_LENGTH      200     // for encoded ObjC data types
