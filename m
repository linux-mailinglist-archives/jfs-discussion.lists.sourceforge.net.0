Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E09D40076C
	for <lists+jfs-discussion@lfdr.de>; Fri,  3 Sep 2021 23:28:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mMGhk-0002XL-Og; Fri, 03 Sep 2021 21:26:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mMGhi-0002X9-B6; Fri, 03 Sep 2021 21:26:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OLsaBzFgvjm17V9pG0gkdCDmdtjBqM923spEyHQ9LIg=; b=hKe7h76peroj6B18tekFUQyIl6
 1DbaKIcYCasWua5Y9+JvPXYdW8IKaP5INGyBVEKbLX3tr8yq4DddSEtO6wD+Ke6MZTe9LRSfhjRQb
 MEQAhk2/j7fzsMkDLH0H1iQSR2xiV/AeP65ZZ4ZST4TpWHnLoO5yEpr9MG4Mg+j0sNDY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OLsaBzFgvjm17V9pG0gkdCDmdtjBqM923spEyHQ9LIg=; b=F4kdAMp17mQrqQ8NBY2eS6n6Oq
 wDPBKcdgrNNY8NwTcUayreXnMwXpIliZuzX1RMwwUjnqwF1TrV/MD1L94pngpeeqbTGMY3dHpRLg6
 6kttB7Wr6XXdRkiewvakXTU8D0WEPTqrmTH2YsjCGQWR/S8/iaLRw9ps7AIiT1ErY9nE=;
Received: from mail-lf1-f48.google.com ([209.85.167.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mMGhe-00DaSU-1x; Fri, 03 Sep 2021 21:26:30 +0000
Received: by mail-lf1-f48.google.com with SMTP id z2so906881lft.1;
 Fri, 03 Sep 2021 14:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=OLsaBzFgvjm17V9pG0gkdCDmdtjBqM923spEyHQ9LIg=;
 b=B4NTlZvxLtB/7WrZJ0PaD5G+O7Lst+0vuSjzCqcII8qdiijT+7mcNypW9u03ir3zu2
 7qIqJRkURqfm5f70AnDhd0iiZx3/p8pkfLwst3xKIL7DNCy+mnRbz91OG7PuFgbBRwip
 aA+f3MXi9D69Yf7U6fA49mj257Yq+GRnOddWRB8WdXvVlria0xpvcWvlIiUdoSwgD51M
 ZVsYzpsirCv187OM5sr1XM7cbJfLUGwwsg0KmWA91c6fJBejudUfTj4HjzaB6kaA2dq9
 +YnIB7jhEIEBuIyRG5exEkgBV6auLQWN6600FKMbqpJrgpNzCEPzSNT1Rb7R42jnhxqY
 jO4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=OLsaBzFgvjm17V9pG0gkdCDmdtjBqM923spEyHQ9LIg=;
 b=lYIRlkQfqIHz74A2szlUhujMEAeSJaZO8CkOfA5xkkEup3S7mbpTXaGOy8COCa8qHT
 yiVlIvdQQGWCprr0P2aPZC896x9xmWe3drkLRebMBX2QYDOukmSiPz6mpWR3i4+XVwbl
 Sbw0vXy2X31JmKUT8JpUf9zeV6oeSFKa50tXsZP8Jd92D7FRFNg6gAchPd0GaoO7Pdgi
 EogAKRuNArbIbobILoa0FP3e0X0qnlx4tMtomPfTUVItSR7nCduzp2tbjF1dS7vilvq9
 M9B0K3bO0KfqYmN8hs1sM02A+2AAe/LQdc/Pc9EvtA2vPu5DAh6+ak/FXLdNNwuXeVdN
 J6Tg==
X-Gm-Message-State: AOAM531bUn9NxTjaz/0uzJH0uNSJsu4rzW8iteembuQzwMB+TZ9latLs
 0fHT+PKD1sB7Ikpive5K89g=
X-Google-Smtp-Source: ABdhPJzhPmtnN/j2JHYBtpAA4ei9yAMop3b/Z2FXIHoC76feQ8rDQuqouxAy0GlWJz5QhQG+k16Itg==
X-Received: by 2002:a19:c350:: with SMTP id t77mr644526lff.7.1630704379466;
 Fri, 03 Sep 2021 14:26:19 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id m17sm33096ljp.80.2021.09.03.14.26.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Sep 2021 14:26:19 -0700 (PDT)
Date: Sat, 4 Sep 2021 00:26:16 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210903212616.xbi5tz5ier5xcpas@kari-VirtualBox>
References: <20210808162453.1653-1-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210808162453.1653-1-pali@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Aug 08, 2021 at 06:24:33PM +0200, Pali Rohár wrote:
    > Module nls_utf8 is broken in several ways. It does not support (full) >
    UTF-8, despite its name. It cannot handle 4-byte UTF-8 sequences a [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.167.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [kari.argillander[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.167.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mMGhe-00DaSU-1x
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

On Sun, Aug 08, 2021 at 06:24:33PM +0200, Pali Roh=E1r wrote:
> Module nls_utf8 is broken in several ways. It does not support (full)
> UTF-8, despite its name. It cannot handle 4-byte UTF-8 sequences and
> tolower/toupper table is not implemented at all. Which means that it is
> not suitable for usage in case-insensitive filesystems or UTF-16
> filesystems (because of e.g. missing UTF-16 surrogate pairs processing).
> =

> This is RFC patch series which unify and fix iocharset=3Dutf8 mount
> option in all fs drivers and converts all remaining fs drivers to use
> utf8s_to_utf16s(), utf16s_to_utf8s(), utf8_to_utf32(), utf32_to_utf8
> functions for implementing UTF-8 support instead of nls_utf8.
> =

> So at the end it allows to completely drop this broken nls_utf8 module.

Now that every filesystem will support nls=3DNULL. Is it possible to just
drop default_table completly? Then default has to be utf8, but is it a
problem?

Then I was also thinking that every nls "codepage module" can have in
Kconfig
	select HAVE_NLS

HAVE_NLS will tell if we can get anything other than nls=3DNULL. This way
fs can drop some functions if they wanted to.  It would be nice to also
make nls module as small as possible because also acpi, pci and usb
selects it. Also many other driver seems to depend on it and they do not
even seem to select it. All other than filesystems seems to just need
utf conversions. At least for quick eye.  Other option is to seperate
nls and utf, but I'm not fan this idea just yet at least.

Whole point is to help little bit small Linux and embedded devices. I'm
happy to do this, but all really depens on if utf8 can be default and
that we sure can think before hand. =


  Argillander

> For more details look at email thread where was discussed fs unification:
> https://lore.kernel.org/linux-fsdevel/20200102211855.gg62r7jshp742d6i@pal=
i/t/#u
> =

> This patch series is mostly untested and presented as RFC. Please let me
> know what do you think about it and if is the correct way how to fix
> broken UTF-8 support in fs drivers. As explained in above email thread I
> think it does not make sense to try fixing whole NLS framework and it is
> easier to just drop this nls_utf8 module.
> =

> Note: this patch series does not address UTF-8 fat case-sensitivity issue:
> https://lore.kernel.org/linux-fsdevel/20200119221455.bac7dc55g56q2l4r@pal=
i/
> =

> Pali Roh=E1r (20):
>   fat: Fix iocharset=3Dutf8 mount option
>   hfsplus: Add iocharset=3D mount option as alias for nls=3D
>   udf: Fix iocharset=3Dutf8 mount option
>   isofs: joliet: Fix iocharset=3Dutf8 mount option
>   ntfs: Undeprecate iocharset=3D mount option
>   ntfs: Fix error processing when load_nls() fails
>   befs: Fix printing iocharset=3D mount option
>   befs: Rename enum value Opt_charset to Opt_iocharset to match mount
>     option
>   befs: Fix error processing when load_nls() fails
>   befs: Allow to use native UTF-8 mode
>   hfs: Explicitly set hsb->nls_disk when hsb->nls_io is set
>   hfs: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount option
>   hfsplus: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount
>     option
>   jfs: Remove custom iso8859-1 implementation
>   jfs: Fix buffer overflow in jfs_strfromUCS_le() function
>   jfs: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount option
>   ntfs: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount option
>   cifs: Do not use broken utf8 NLS table for iocharset=3Dutf8 mount option
>   cifs: Remove usage of load_nls_default() calls
>   nls: Drop broken nls_utf8 module
> =

>  fs/befs/linuxvfs.c          |  22 ++++---
>  fs/cifs/cifs_unicode.c      | 128 +++++++++++++++++++++++-------------
>  fs/cifs/cifs_unicode.h      |   2 +-
>  fs/cifs/cifsfs.c            |   2 +
>  fs/cifs/cifssmb.c           |   8 +--
>  fs/cifs/connect.c           |   8 ++-
>  fs/cifs/dfs_cache.c         |  24 +++----
>  fs/cifs/dir.c               |  28 ++++++--
>  fs/cifs/smb2pdu.c           |  17 ++---
>  fs/cifs/winucase.c          |  14 ++--
>  fs/fat/Kconfig              |  15 -----
>  fs/fat/dir.c                |  17 ++---
>  fs/fat/fat.h                |  22 +++++++
>  fs/fat/inode.c              |  28 ++++----
>  fs/fat/namei_vfat.c         |  26 ++++++--
>  fs/hfs/super.c              |  62 ++++++++++++++---
>  fs/hfs/trans.c              |  62 +++++++++--------
>  fs/hfsplus/dir.c            |   6 +-
>  fs/hfsplus/options.c        |  39 ++++++-----
>  fs/hfsplus/super.c          |   7 +-
>  fs/hfsplus/unicode.c        |  31 ++++++++-
>  fs/hfsplus/xattr.c          |  14 ++--
>  fs/hfsplus/xattr_security.c |   3 +-
>  fs/isofs/inode.c            |  27 ++++----
>  fs/isofs/isofs.h            |   1 -
>  fs/isofs/joliet.c           |   4 +-
>  fs/jfs/jfs_dtree.c          |  13 +++-
>  fs/jfs/jfs_unicode.c        |  35 +++++-----
>  fs/jfs/jfs_unicode.h        |   2 +-
>  fs/jfs/super.c              |  29 ++++++--
>  fs/nls/Kconfig              |   9 ---
>  fs/nls/Makefile             |   1 -
>  fs/nls/nls_utf8.c           |  67 -------------------
>  fs/ntfs/dir.c               |   6 +-
>  fs/ntfs/inode.c             |   5 +-
>  fs/ntfs/super.c             |  60 ++++++++---------
>  fs/ntfs/unistr.c            |  28 +++++++-
>  fs/udf/super.c              |  50 ++++++--------
>  fs/udf/udf_sb.h             |   2 -
>  fs/udf/unicode.c            |   4 +-
>  40 files changed, 510 insertions(+), 418 deletions(-)
>  delete mode 100644 fs/nls/nls_utf8.c
> =

> -- =

> 2.20.1
> =



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
