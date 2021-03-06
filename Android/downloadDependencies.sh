#!/bin/sh

if [ -z "$NDK_MODULE_PATH" ]; then
    echo "ERROR: NDK_MODULE_PATH is not set. Please set this variable to continue.\n";
    exit;
fi

echo "Using NDK_MODULE_PATH: $NDK_MODULE_PATH\n"
cd $NDK_MODULE_PATH

# LIBSNDFILE
LIBSNDFILE_REPO=http://bitbucket.org/kunstmusik/libsndfile-android.git
if [ -e libsndfile-android ]; then
  echo "libsndfile-android already exists, doing a pull to get the latest";
  cd libsndfile-android;
  git pull;
  cd ..;
else
  echo "Cloning libsndfile-android...";
  git clone $LIBSNDFILE_REPO
fi

# FLUIDSYNTH
FLUIDSYNTH_REPO=http://bitbucket.org/kunstmusik/fluidsynth-android.git
if [ -e fluidsynth-android ]; then
  echo "fluidsynth-android already exists, doing a pull to get the latest";
  cd fluidsynth-android;
  git pull;
  cd ..;
else
  echo "Cloning fluidsynth-android...";
  git clone $FLUIDSYNTH_REPO
fi

# STK
STK_REPO=http://github.com/thestk/stk.git
if [ -e stk ]; then
  echo "STK already exists, doing a pull to get the latest";
  cd stk;
  git pull;
  cd ..;
else
  echo "Cloning STK...";
  git clone $STK_REPO
fi

# OpenSoundControl
OSC_REPO=https://bitbucket.org/michael_gogins/liblo-android
if [ -e liblo-android ]; then
  echo "liblo-android already exists, doing a pull to get the latest";
  cd liblo-android;
  git pull;
  cd ..;
else
  echo "Cloning liblo...";
  git clone $OSC_REPO
fi

