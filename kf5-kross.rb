require "formula"

class Kf5Kross < Formula
  url "http://download.kde.org/unstable/frameworks/4.97.0/kross-4.97.0.tar.xz"
  sha1 "22149807a8fc3bfaf0c159f73ec158cf1a17d7f5"

  head 'git://anongit.kde.org/kross.git'

  depends_on "cmake" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "qt5" => "with-d-bus"
  depends_on "haraldf/kf5/kf5-kjs"
  depends_on "haraldf/kf5/kf5-kcompletion"
  depends_on "haraldf/kf5/kf5-ki18n"
  depends_on "haraldf/kf5/kf5-kcoreaddons"
  depends_on "haraldf/kf5/kf5-kauth"
  depends_on "haraldf/kf5/kf5-kcodecs"
  depends_on "haraldf/kf5/kf5-kguiaddons"
  depends_on "haraldf/kf5/kf5-kconfigwidgets"
  depends_on "haraldf/kf5/kf5-kitemviews"
  depends_on "haraldf/kf5/kf5-kiconthemes"
  depends_on "haraldf/kf5/kf5-kglobalaccel"
  depends_on "haraldf/kf5/kf5-kdbusaddons"
  depends_on "haraldf/kf5/kf5-kwindowsystem"
  depends_on "haraldf/kf5/kf5-sonnet"
  depends_on "haraldf/kf5/kf5-ktextwidgets"
  depends_on "haraldf/kf5/kf5-attica"
  depends_on "haraldf/kf5/kf5-kbookmarks"
  depends_on "haraldf/kf5/kf5-kjobwidgets"
  depends_on "haraldf/kf5/kf5-solid"
  depends_on "haraldf/kf5/kf5-kio"
  depends_on "haraldf/kf5/kf5-knotifications"
  depends_on "haraldf/kf5/kf5-kparts"
  depends_on "haraldf/kf5/kf5-kservice"
  depends_on "haraldf/kf5/kf5-kwidgetsaddons"
  depends_on "haraldf/kf5/kf5-kxmlgui"
  depends_on "haraldf/kf5/kf5-kdoctools"

  def install
    args = std_cmake_args
    args << "-DCMAKE_PREFIX_PATH=\"#{Formula.factory('qt5').opt_prefix};#{Formula.factory('kf5-extra-cmake-modules').opt_prefix}\""

    system "cmake", ".", *args
    system "make", "install"
  end
end
