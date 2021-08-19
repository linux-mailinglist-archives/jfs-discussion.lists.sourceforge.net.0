Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F343F173F
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Aug 2021 12:26:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mGfDG-0006jA-3H; Thu, 19 Aug 2021 10:23:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mGfDE-0006j1-G8; Thu, 19 Aug 2021 10:23:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s7gzHcAvUGRal7zGjfCj1tvyGgqr2i8nXDn4Q3sKzQk=; b=hfC4gce9LRQHoWjy8t3XTn0lXt
 eqG7POeCj2QNflUqvREg6RNrZK/BiID5CHDiuHXqVBD1ckY/GjO9qr91mX3IimEWtXNvgmxeCBANX
 3l5jhwOTOoam/lm2CT4w3vh9+yg7mS2IUNaNg6WT9EqJ0QCqDRla6/IGogB5nXKBNNwI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s7gzHcAvUGRal7zGjfCj1tvyGgqr2i8nXDn4Q3sKzQk=; b=DehLkPYP8Svnbrr5/sEv5ujbhg
 MwW2UJtVv1OTUhvHsnLdv4Z8DhSeuf6ZJkn3iWdh4RxU4QcN6JfniIOIKSOctFxyrAtib68o1n5bj
 LA4hVs6nPAZRQ9OjQ2GDrgItGbuZ02sLYs+q7ynG6guBxHZv6uauv56sl3W0ukJamdJs=;
Received: from mail-lj1-f175.google.com ([209.85.208.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mGfDD-00BQSs-Sn; Thu, 19 Aug 2021 10:23:52 +0000
Received: by mail-lj1-f175.google.com with SMTP id n7so10753592ljq.0;
 Thu, 19 Aug 2021 03:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=s7gzHcAvUGRal7zGjfCj1tvyGgqr2i8nXDn4Q3sKzQk=;
 b=Mfyx9RZf49s53j40JmyfZM1lJWT/tSB5dUUVPbPQyL1z9vJPwL8wxRbIWIw1ek9N3P
 FCdsucQWgjUO4i8U/uWO19zPjJzxYSv3B0ps89+KpLOFQzlQyZ6Q7gYJ2o5hH9x7boZK
 0hHxub5elRpkprNhLwVf8Z35OTkvNjcpWTknPnUzIBddpJWPGpp3zCNq/CF6jdEH4/1D
 csNUXhEd/S70aZEY370wZybpR4RAhznZFB5p5DHOjaZ2WPdH7bCuyDoZ+Tfjryp/J9k9
 jYZ0Z5Ysn3Bx4t7gZi58GygFNtApzoSEW/Ha01maSBtlbczhdiMyi5YMIFmIRLeiyk2A
 QqNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=s7gzHcAvUGRal7zGjfCj1tvyGgqr2i8nXDn4Q3sKzQk=;
 b=EADyGU5q1okl+EUf6WZg6btmSblyqy2b1AWcJ2+hGkpMpQM0mf5oZCjUJx0baJ7cIN
 7X76PY1F2bCssgli4DVyJaV2UDljDiNeo5TqL7ZHVtPSmypaegESseNnuuADLLiODqVE
 qZVyvJ1lIgNWP5V9DF9VeN0UuJo7ctJut0odAPQXhskZfoSPdrSROojHmCkkcys0Wiv8
 djqnXVBK5vXQdp9gYdFwsyjnXqc/aqP5si9lg/SO49HRl3XWqwEzRcKZiodvUHbGns7w
 a51olpC4Xf3sZ/7HlTkU+re7/Okkn8hNLPqY9kXqMi865uv31lfSaOX9AtbxLgmAg+Cd
 NKew==
X-Gm-Message-State: AOAM5326AZlEiuJXl+PcrCaEL62bvk2sL7xzF9b9SOD2fkRATOMCLA7x
 gganPnRIP7Xzrod0dr6zg+0=
X-Google-Smtp-Source: ABdhPJwBC3AtCQaaRJLeMqncG4o7h0yRkRo3Vd0w10HmGYffhLah81Cfn2ICXXTq/oY9pVnTwY2K2Q==
X-Received: by 2002:a2e:2f1c:: with SMTP id v28mr11179313ljv.476.1629368625379; 
 Thu, 19 Aug 2021 03:23:45 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id i21sm262452lfc.92.2021.08.19.03.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 03:23:44 -0700 (PDT)
Date: Thu, 19 Aug 2021 13:23:42 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210819102342.6ps7lowpuomyqcdk@kari-VirtualBox>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-6-pali@kernel.org>
 <20210819012108.3isqi4t6rmd5fd5x@kari-VirtualBox>
 <20210819081222.vnvxfrtqctfev6xu@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210819081222.vnvxfrtqctfev6xu@pali>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Aug 19, 2021 at 10:12:22AM +0200, Pali Rohár wrote:
    > On Thursday 19 August 2021 04:21:08 Kari Argillander wrote: > > On Sun,
    Aug 08, 2021 at 06:24:38PM +0200, Pali Rohár wrote: > > > Other fs [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.175 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [kari.argillander[at]gmail.com]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.175 listed in wl.mailspike.net]
X-Headers-End: 1mGfDD-00BQSs-Sn
Subject: Re: [Jfs-discussion] [RFC PATCH 05/20] ntfs: Undeprecate iocharset=
 mount option
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

On Thu, Aug 19, 2021 at 10:12:22AM +0200, Pali Roh=E1r wrote:
> On Thursday 19 August 2021 04:21:08 Kari Argillander wrote:
> > On Sun, Aug 08, 2021 at 06:24:38PM +0200, Pali Roh=E1r wrote:
> > > Other fs drivers are using iocharset=3D mount option for specifying c=
harset.
> > > So mark iocharset=3D mount option as preferred and deprecate nls=3D m=
ount
> > > option.
> >  =

> > One idea is also make this change to fs/fc_parser.c and then when we
> > want we can drop support from all filesystem same time. This way we
> > can get more deprecated code off the fs drivers. Draw back is that
> > then every filesstem has this deprecated nls=3D option if it support
> > iocharsets option. But that should imo be ok.
> =

> Beware that iocharset=3D is required only for fs which store filenames in
> some specific encoding (in this case extension to UTF-16). For fs which
> store filenames in raw bytes this option should not be parsed at all.

Yeah of course. I was thinking that what we do is that if key is nls=3D
we change key to iocharset, print deprecated and then send it to driver
parser as usual. This way driver parser will never know that user
specifie nls=3D because it just get iocharset. But this is probebly too
fancy way to think simple problem. Just idea. =


> Therefore I'm not sure if this parsing should be in global
> fs/fc_parser.c file...



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
