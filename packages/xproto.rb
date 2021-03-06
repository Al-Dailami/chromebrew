require 'package'

class Xproto < Package
  description 'The protocols for the X window system provide extended functionality for communication between a X client and the server.'
  homepage 'https://x.org'
  version '7.0.31-0'
  source_url 'https://www.x.org/archive/individual/proto/xproto-7.0.31.tar.gz'
  source_sha256 '6d755eaae27b45c5cc75529a12855fed5de5969b367ed05003944cf901ed43c7'

  binary_url ({

  })
  binary_sha256 ({

  })

  def self.build
    system "./configure --prefix=#{CREW_PREFIX} --libdir=#{CREW_LIB_PREFIX}"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
