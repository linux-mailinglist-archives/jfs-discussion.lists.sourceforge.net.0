Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5762D3F239D
	for <lists+jfs-discussion@lfdr.de>; Fri, 20 Aug 2021 01:19:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mGrJA-0007Uz-UO; Thu, 19 Aug 2021 23:18:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mGrJ9-0007Uh-Bc; Thu, 19 Aug 2021 23:18:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ry+uQ2ze+f23BW9wmso3e2NcNF5MK0mmAGV5/hmmOmo=; b=ZObxK7dh6c3uzJGqD51J0pCCCx
 GU30wCUhSCeuFBdUL4Qi6RI6lpOgbq6SfFzU5YT8bEfl8KyHR7IHwl9N1/wFCeFpr9Nf9IFLYDV4U
 LnZsV9Ppkizd5jw4YJyRwO8J7wcQQ8PtnqeUpiMyAcDQPxhw/+Td+OIVKloKptju7bMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ry+uQ2ze+f23BW9wmso3e2NcNF5MK0mmAGV5/hmmOmo=; b=DbW0zBVFNg/EHXS+jrqdP/IXL7
 QRioUkfnCgLTpSPpm8+/p5lTK/B7iqMRLZV6aWlBhAItmbWBlFyqlIoOaSlDMFlM+6m7vSZ2e5lWb
 ZwwbARPDQPOvWjxNU2pCUYJjFnyOyXWWtEK2mG/27ARt7awlkP1kIy0ipZ53UR9qCwBc=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mGrJ4-0008BX-Ta; Thu, 19 Aug 2021 23:18:47 +0000
Received: by mail-lf1-f47.google.com with SMTP id i28so16411179lfl.2;
 Thu, 19 Aug 2021 16:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Ry+uQ2ze+f23BW9wmso3e2NcNF5MK0mmAGV5/hmmOmo=;
 b=uJ7HeHQontttqIGqQ2NX/14IN/xSl7wiyEI0b6WFZ9B4Dk2KIpd5De3gqj/D4hSwx0
 gRNXb/wxBl6wkYTzjm+KZtVK0roxZgPm8z4Pq1aBHFPH6AjN/buNZ107mIV240blAWzH
 xnfTFqB2fCWp2CG+8vtFP+AeTHM5XXl/CoU91GXHQZ6NWaP7lUV1kIsNh4ck8DBB0o3h
 /FK+6lBKeWsGqNhpFP5rDtQcdaGZbOsPYjsHL9y50TqOaFd9YT6rv0eLFkf0yRt3VKDP
 MBLtq/DxFcyYpau9CLyyDhmfF2txevvNvUwOPdmv5/Ml0CqAmPLH3vycy/XY2IjiQFs0
 MK/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Ry+uQ2ze+f23BW9wmso3e2NcNF5MK0mmAGV5/hmmOmo=;
 b=jD5NBJFgPUDBctrEtcP+8sIqdiDj5I5UEDcJw7bHWW1tkO7a8f5Mu2keMTLrNpPajs
 0N+kBxe5eAy9+S032982FPJco6yi4g4p4uu4v+ngeZAXmtqcH0fiNVojj7WlEMsc3VYi
 SjiG7en/EzIU3930PToHekHzj5tKWNTl1H7h5LFMcmij3Xl7DrWQ4lM/35cEigKm43uj
 uxo9bN9GIsms/Ac47miws1H+vtmPk5+jf/hZ8UPy3rsZCVZtoKW6dZeITD/rorMV60bo
 mqGBwOR41AizYTpyxtWx0TnZ0tEvOt+iYw+ZdSRlu0hti9GRuZYqL3mnyGfwUmNMvaef
 Mcsg==
X-Gm-Message-State: AOAM533Fb7cUmlvm46pEVVMsSyvN+8sbHVomDrJPwC7cdIBAKKiBi4Dp
 o5Z1D1OdzJj6VMiuEDPTPPk=
X-Google-Smtp-Source: ABdhPJx87x0dZUPkISoJL4ME1bzX8W9BQeT50/qxq+el9HtXrx76quTuHsUMVVORkAiJcCURiF15WQ==
X-Received: by 2002:a05:6512:22cd:: with SMTP id
 g13mr12755777lfu.440.1629415116388; 
 Thu, 19 Aug 2021 16:18:36 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id 3sm381713ljq.136.2021.08.19.16.18.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 16:18:35 -0700 (PDT)
Date: Fri, 20 Aug 2021 02:18:33 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210819231833.deyfwq73tbslkizc@kari-VirtualBox>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-6-pali@kernel.org>
 <20210819012108.3isqi4t6rmd5fd5x@kari-VirtualBox>
 <20210819081222.vnvxfrtqctfev6xu@pali>
 <20210819102342.6ps7lowpuomyqcdk@kari-VirtualBox>
 <20210819220412.jicwnrevzi6s25ee@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210819220412.jicwnrevzi6s25ee@pali>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mGrJ4-0008BX-Ta
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

On Fri, Aug 20, 2021 at 12:04:12AM +0200, Pali Roh=E1r wrote:
> On Thursday 19 August 2021 13:23:42 Kari Argillander wrote:
> > On Thu, Aug 19, 2021 at 10:12:22AM +0200, Pali Roh=E1r wrote:
> > > On Thursday 19 August 2021 04:21:08 Kari Argillander wrote:
> > > > On Sun, Aug 08, 2021 at 06:24:38PM +0200, Pali Roh=E1r wrote:
> > > > > Other fs drivers are using iocharset=3D mount option for specifyi=
ng charset.
> > > > > So mark iocharset=3D mount option as preferred and deprecate nls=
=3D mount
> > > > > option.
> > > >  =

> > > > One idea is also make this change to fs/fc_parser.c and then when we
> > > > want we can drop support from all filesystem same time. This way we
> > > > can get more deprecated code off the fs drivers. Draw back is that
> > > > then every filesstem has this deprecated nls=3D option if it support
> > > > iocharsets option. But that should imo be ok.
> > > =

> > > Beware that iocharset=3D is required only for fs which store filename=
s in
> > > some specific encoding (in this case extension to UTF-16). For fs whi=
ch
> > > store filenames in raw bytes this option should not be parsed at all.
> > =

> > Yeah of course. I was thinking that what we do is that if key is nls=3D
> > we change key to iocharset, print deprecated and then send it to driver
> > parser as usual. This way driver parser will never know that user
> > specifie nls=3D because it just get iocharset. But this is probebly too
> > fancy way to think simple problem. Just idea. =

> =

> This has an issue that when you use nls=3D option for e.g. ext4 fs then
> kernel starts reporting that nls=3D for ext4 is deprecated. But there is
> no nls=3D option and neither iocharset=3D option for ext4. So kernel shou=
ld
> not start reporting such warnings for ext4.

It gets kinda messy. I was also thinking that but if that was
implemented then we could first send iocharset to driver and after that
we print deprecated if it succeeded. If it not succeed then we print
error messages same as always.

I have not look how easily this is can be done in parser.

> =

> > > Therefore I'm not sure if this parsing should be in global
> > > fs/fc_parser.c file...
> > =



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
