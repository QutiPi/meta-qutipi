# This file contains device-specific qmake.conf settings
QMAKE_PLATFORM         += qutipi
QT_QPA_DEFAULT_PLATFORM = eglfs


# RPI
QMAKE_INCDIR_EGL        = $$[QT_SYSROOT]/usr/include/interface/vcos/pthreads \
                          $$[QT_SYSROOT]/usr/include/interface/vmcs_host/linux
QMAKE_INCDIR_OPENGL_ES2 = $${QMAKE_INCDIR_EGL}

QMAKE_LIBS_EGL          = -lEGL -lGLESv2
QMAKE_CFLAGS           += $$RPI_CFLAGS
QMAKE_CXXFLAGS         += $$RPI_CFLAGS

QT_QPA_DEFAULT_PLATFORM = eglfs
EGLFS_DEVICE_INTEGRATION = eglfs_brcm
