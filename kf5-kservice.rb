require "formula"

class Kf5Kservice < Formula
  url "http://download.kde.org/stable/frameworks/5.22/kservice-5.22.0.tar.xz"
  sha256 "e92937741dda4f5d79f031e3ab7252e9b3d258f57dc9aa6a1c512ef83a43b8b0"
  homepage "http://www.kde.org/"

  head 'git://anongit.kde.org/kservice.git'

  depends_on "cmake" => :build
  depends_on "haraldf/kf5/kf5-extra-cmake-modules" => :build
  depends_on "qt5" => "with-dbus"
  depends_on "haraldf/kf5/kf5-kcrash"
  depends_on "haraldf/kf5/kf5-kdoctools" => :build
  depends_on "haraldf/kf5/kf5-kdbusaddons"
  depends_on "haraldf/kf5/kf5-kconfig"
  depends_on "haraldf/kf5/kf5-ki18n"

  def install
    args = std_cmake_args


    system "cmake", ".", "-DBUILD_TESTING=OFF", *args
    system "make", "install"
    prefix.install "install_manifest.txt"
  end
end
