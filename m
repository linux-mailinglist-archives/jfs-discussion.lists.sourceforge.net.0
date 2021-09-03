Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F32B4007C8
	for <lists+jfs-discussion@lfdr.de>; Sat,  4 Sep 2021 00:07:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mMHL7-00035e-Ru; Fri, 03 Sep 2021 22:07:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mMHL5-00035U-A3; Fri, 03 Sep 2021 22:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n3+SAT+wUh+y12YwwSXLSGu91HRrwMiAwD6Udu242w4=; b=R6o7dks3GFXWcG8lp2kPPc0rt8
 QEuZhjMb9erd4ovZYFYQFVWQMbTAyjBofiOUuEZYx/4wb0LSzPJaZR6I35EPeZHweGCTb+d1DRPZy
 VRabwxexZxNJ1KPYo0P51pg3sOcNfmVUptt6aJfoPrFGDkHxTbRHMqMa0NFBWIFVLv/M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n3+SAT+wUh+y12YwwSXLSGu91HRrwMiAwD6Udu242w4=; b=irWidiQ35HGXt/pUxdazD3etl2
 bYHCHoMNGlLOeqjZwZjpQFxiiK3Jggm1tcUYmB6kYWKfz8mJKEYXXPRZFYoFee7SchtiX8Lsny7QQ
 VHlsI9bF02XY+byW0/tcl+Da+24ClxzZnZWnKw4ZAmi30YE/SaIs7CXZEhSTz7WwZqBs=;
Received: from mail-lj1-f177.google.com ([209.85.208.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMHKz-0006xA-Un; Fri, 03 Sep 2021 22:07:11 +0000
Received: by mail-lj1-f177.google.com with SMTP id w4so917569ljh.13;
 Fri, 03 Sep 2021 15:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=n3+SAT+wUh+y12YwwSXLSGu91HRrwMiAwD6Udu242w4=;
 b=gnrPJAMYQJs2kE0+sucg41Ur7PZsuL+E2NG/axKrXloJKX3d7HdqkqwWcjpBPMi5IP
 0d3DIKyoVeHfpBuWx4v0JJh8watQU+jszTZjJOQsUqoWzWlJjCc4l/rRv8z6gJdgZtvV
 raC/VkiSW4QAaoEKlTryivsJcysBW7mqsf+cupT7ypHUuNAK52Fdkdz+FpNvcgvjOmMJ
 q4OLzqJIUKy33DFBQh6zuo/kbf+JUbB8zJd8zF2sdA/N+v5KhmaB/tG5RyaBgMepwJ6M
 VCSMRa2MCjGzy/+RJgOc1/p27uvH+hweLEAqfNt5FmWcIDl7lvBBkIP6EXIgzHxdWUyE
 0QIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=n3+SAT+wUh+y12YwwSXLSGu91HRrwMiAwD6Udu242w4=;
 b=e0BFJw2gtdo2mLa26bcMLcCQdUWAJj40lQDPQeKIZJ9Gkuf/Q6KKvlqD/F6GcgnLJA
 7y6HClkqxkVBEpfUjoYG9XGz3YhBM2FYUzhxI+XwY1n2WX7sjXPlLKbiGroAsXySv+s0
 rcNrlotrhYDgmoDHbyt+8XZZk58Iubk3WSg0Zoa4XHquQklM0iphiHeAPjGIf23spYoB
 wsZqrQZ9/SKe7w+XTNvjnRHcIEySVXWefvh3P2C18QJtHmqXpTY/y6ehU0fIyIuunN5B
 2KgTUHaiFAup7iUNiH4Qcqabzn7mDcl86NmuSuNCZoxUhocIfibw4n1FJ0OofHr0olIi
 yBZQ==
X-Gm-Message-State: AOAM530LzcXZcCun2J7F0HdZIhZW9m3z2v/TCQF1LEmiVuOzd3gLqy19
 1SBHBVt3Clk2xR/Qul4tUkcB3RVh9BjBlQ==
X-Google-Smtp-Source: ABdhPJxrlnDahomjgjCeNeYPGaX5uaNHim/FoQcXEF7HvuWmzlWePT8brF8QIvetravlYRoje6IDCw==
X-Received: by 2002:a2e:7d17:: with SMTP id y23mr806578ljc.392.1630706819322; 
 Fri, 03 Sep 2021 15:06:59 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id y23sm61666lfg.277.2021.09.03.15.06.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 15:06:58 -0700 (PDT)
Date: Sat, 4 Sep 2021 01:06:56 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210903220656.f4mmp6mdyzryui4f@kari-VirtualBox>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210903212616.xbi5tz5ier5xcpas@kari-VirtualBox>
 <20210903213703.s5y5iobmdrlmzfek@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903213703.s5y5iobmdrlmzfek@pali>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mMHKz-0006xA-Un
Subject: Re: [Jfs-discussion] [RFC PATCH 00/20] fs: Remove usage of broken
 nls_utf8 and drop it
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Sep 03, 2021 at 11:37:03PM +0200, Pali Roh=E1r wrote:
> On Saturday 04 September 2021 00:26:16 Kari Argillander wrote:
> > On Sun, Aug 08, 2021 at 06:24:33PM +0200, Pali Roh=E1r wrote:
> > > Module nls_utf8 is broken in several ways. It does not support (full)
> > > UTF-8, despite its name. It cannot handle 4-byte UTF-8 sequences and
> > > tolower/toupper table is not implemented at all. Which means that it =
is
> > > not suitable for usage in case-insensitive filesystems or UTF-16
> > > filesystems (because of e.g. missing UTF-16 surrogate pairs processin=
g).
> > > =

> > > This is RFC patch series which unify and fix iocharset=3Dutf8 mount
> > > option in all fs drivers and converts all remaining fs drivers to use
> > > utf8s_to_utf16s(), utf16s_to_utf8s(), utf8_to_utf32(), utf32_to_utf8
> > > functions for implementing UTF-8 support instead of nls_utf8.
> > > =

> > > So at the end it allows to completely drop this broken nls_utf8 modul=
e.
> > =

> > Now that every filesystem will support nls=3DNULL. Is it possible to ju=
st
> > drop default_table completly? Then default has to be utf8, but is it a
> > problem?
> =

> Currently (default) fallback nls table is iso8859-1. I was planning to
> merge fallback nls table and external iso8859-1 table into one, to
> decrease code duplication.
> =

> There is also config option for default table. I do not think it is a
> good idea to drop config option for default table as more people are
> using some iso8859-X as default encoding.

I'm not suggesting that we drop default config option. I just suggest we
make fallback default to utf8. So load_nls_default() will just return
NULL and it will be ok because every fs can handle that situation after
some tweaks at least. This way we can drop default_table (iso8859-1 as
you said) from nls_base. =


> > Then I was also thinking that every nls "codepage module" can have in
> > Kconfig
> > 	select HAVE_NLS
> > =

> > HAVE_NLS will tell if we can get anything other than nls=3DNULL. This w=
ay
> > fs can drop some functions if they wanted to.  It would be nice to also
> > make nls module as small as possible because also acpi, pci and usb
> > selects it. Also many other driver seems to depend on it and they do not
> > even seem to select it. All other than filesystems seems to just need
> > utf conversions. At least for quick eye.  Other option is to seperate
> > nls and utf, but I'm not fan this idea just yet at least.
> =

> nls tables can be already compiled as modules. There are also
> inefficient implementations of some nls tables (e.g. ascii or
> iso8859-1). So there are already places for decreasing size of nls
> code without loosing any functionality.

There will still be default_table in and many times we won't need it as
we only be using utf conversion.

> =

> > Whole point is to help little bit small Linux and embedded devices. I'm
> > happy to do this, but all really depens on if utf8 can be default and
> > that we sure can think before hand. =

> =

> I agree that on modern embedded systems there is no reason to use
> non-utf8 encoding if you are not targeting some legacy userspace.
> =

> So allowing to compile filesystems also without nls code (in which case
> they would use only utf-8) makes sense.

Now I have looked code little more and it kinda makes sense to even just
seperate nls and utf. Only filesystems will need nls and rest can do
with just utf so kinda makes sense here. Also utf stuff probably has no
need to be module because usually when something selects it (pci, acpi,
usb) they cannot be modules. But I'm not expert in what the drawbacks
are here.

> =

> >   Argillander
> > =

> > > For more details look at email thread where was discussed fs unificat=
ion:
> > > https://lore.kernel.org/linux-fsdevel/20200102211855.gg62r7jshp742d6i=
@pali/t/#u
> > > =

> > > This patch series is mostly untested and presented as RFC. Please let=
 me
> > > know what do you think about it and if is the correct way how to fix
> > > broken UTF-8 support in fs drivers. As explained in above email threa=
d I
> > > think it does not make sense to try fixing whole NLS framework and it=
 is
> > > easier to just drop this nls_utf8 module.
> > > =

> > > Note: this patch series does not address UTF-8 fat case-sensitivity i=
ssue:
> > > https://lore.kernel.org/linux-fsdevel/20200119221455.bac7dc55g56q2l4r=
@pali/
> > > =

> > > Pali Roh=E1r (20):
> > >   fat: Fix iocharset=3Dutf8 mount option
> > >   hfsplus: Add iocharset=3D mount option as alias for nls=3D
> > >   udf: Fix iocharset=3Dutf8 mount option
> > >   isofs: joliet: Fix iocharset=3Dutf8 mount option
> > >   ntfs: Undeprecate iocharset=3D mount option
> > >   ntfs: Fix error processing when load_nls() fails
> > >   befs: Fix printing iocharset=3D mount option
> > >   befs: Rename enum value Opt_charset to Opt_iocharset to match mount
> > >     option
> > >   befs: Fix error processing when load_nls() fails
> > >   befs: Allow to use native UTF-8 mode
> > >   hfs: Explicitly set hsb->nls_disk when hsb->nls_io is set
> > >   hfs: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount op=
tion
> > >   hfsplus: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount
> > >     option
> > >   jfs: Remove custom iso8859-1 implementation
> > >   jfs: Fix buffer overflow in jfs_strfromUCS_le() function
> > >   jfs: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount op=
tion
> > >   ntfs: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount o=
ption
> > >   cifs: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount o=
ption
> > >   cifs: Remove usage of load_nls_default() calls
> > >   nls: Drop broken nls_utf8 module
> > > =

> > >  fs/befs/linuxvfs.c          |  22 ++++---
> > >  fs/cifs/cifs_unicode.c      | 128 +++++++++++++++++++++++-----------=
--
> > >  fs/cifs/cifs_unicode.h      |   2 +-
> > >  fs/cifs/cifsfs.c            |   2 +
> > >  fs/cifs/cifssmb.c           |   8 +--
> > >  fs/cifs/connect.c           |   8 ++-
> > >  fs/cifs/dfs_cache.c         |  24 +++----
> > >  fs/cifs/dir.c               |  28 ++++++--
> > >  fs/cifs/smb2pdu.c           |  17 ++---
> > >  fs/cifs/winucase.c          |  14 ++--
> > >  fs/fat/Kconfig              |  15 -----
> > >  fs/fat/dir.c                |  17 ++---
> > >  fs/fat/fat.h                |  22 +++++++
> > >  fs/fat/inode.c              |  28 ++++----
> > >  fs/fat/namei_vfat.c         |  26 ++++++--
> > >  fs/hfs/super.c              |  62 ++++++++++++++---
> > >  fs/hfs/trans.c              |  62 +++++++++--------
> > >  fs/hfsplus/dir.c            |   6 +-
> > >  fs/hfsplus/options.c        |  39 ++++++-----
> > >  fs/hfsplus/super.c          |   7 +-
> > >  fs/hfsplus/unicode.c        |  31 ++++++++-
> > >  fs/hfsplus/xattr.c          |  14 ++--
> > >  fs/hfsplus/xattr_security.c |   3 +-
> > >  fs/isofs/inode.c            |  27 ++++----
> > >  fs/isofs/isofs.h            |   1 -
> > >  fs/isofs/joliet.c           |   4 +-
> > >  fs/jfs/jfs_dtree.c          |  13 +++-
> > >  fs/jfs/jfs_unicode.c        |  35 +++++-----
> > >  fs/jfs/jfs_unicode.h        |   2 +-
> > >  fs/jfs/super.c              |  29 ++++++--
> > >  fs/nls/Kconfig              |   9 ---
> > >  fs/nls/Makefile             |   1 -
> > >  fs/nls/nls_utf8.c           |  67 -------------------
> > >  fs/ntfs/dir.c               |   6 +-
> > >  fs/ntfs/inode.c             |   5 +-
> > >  fs/ntfs/super.c             |  60 ++++++++---------
> > >  fs/ntfs/unistr.c            |  28 +++++++-
> > >  fs/udf/super.c              |  50 ++++++--------
> > >  fs/udf/udf_sb.h             |   2 -
> > >  fs/udf/unicode.c            |   4 +-
> > >  40 files changed, 510 insertions(+), 418 deletions(-)
> > >  delete mode 100644 fs/nls/nls_utf8.c
> > > =

> > > -- =

> > > 2.20.1
> > > =



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
