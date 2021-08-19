Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC823F0FF0
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Aug 2021 03:21:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mGWkF-0004Dl-90; Thu, 19 Aug 2021 01:21:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mGWkD-0004Dc-7X; Thu, 19 Aug 2021 01:21:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SJuvwza4i3euGFKnNsOSq5UE2l7kBSIoFPXhirEE3R4=; b=BLRbt+DGDaYIrRgnaAGbmwL+ui
 2YCenvL9trBL9KRcStSTZq40Hue9XBwcrfs+Wf+Epqo/NbLzFMmImHAEftIxSXJL/N0hZN92j/v12
 33ZXSmOTKztHvbhZjvE3x7AIf8okQ73q6Y/TzgUHzGWLalNAHnnGWQt2zn7pfl8S1FO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SJuvwza4i3euGFKnNsOSq5UE2l7kBSIoFPXhirEE3R4=; b=LBOKdcbBXn1Hyyu+Rz++8CKRdl
 /KpnqCiOs1NwKSCPAMNainnXFRMzSjmt1fk8r9wwpvpArfrT2dSrI0kgE9Krn8yrvrwCn225eKJTY
 I93MnVOY/rHMG6gQtl7i1Cc0jGinoOaTCTyiIZB6gSWe5uKQfapzSGMfvdvFYPhcg4Gk=;
Received: from mail-lf1-f50.google.com ([209.85.167.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mGWk9-0007pv-On; Thu, 19 Aug 2021 01:21:21 +0000
Received: by mail-lf1-f50.google.com with SMTP id w20so8868110lfu.7;
 Wed, 18 Aug 2021 18:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SJuvwza4i3euGFKnNsOSq5UE2l7kBSIoFPXhirEE3R4=;
 b=fxKyYxPdHn19y1zWIJctQyf02Cp5BGh+iXmRYyxGsHjzqVwZ28VBRWJ4ovpTkA0OpW
 7fRNbiUErN6HeIrTCsFh8vUDYXQ9BBAkpzzuBP+Xys1jrVAcWqWXy4S384e/U35Qh00m
 BcXnkq+FlEm+WVrtUHfbtnwu9oBE9V2+Oj495lXZNHXn5UtCT85FzqvMvZobRbJ3Lg+k
 4/O1d9BcepeOCNoy3b0rfSHJLXU1gqed0RkIl1eygr4nghgbMn82FHAB/nGOvrWViZEh
 1EzCbkXQ3qygEk0UqGtscvSrQzF2Y1pSqSqOIdxX9j/kN/SYja/ZXXipVZdgStPyrMUC
 ElsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SJuvwza4i3euGFKnNsOSq5UE2l7kBSIoFPXhirEE3R4=;
 b=CbzgFvxG3LAFAMvoHIoOgrjzP10xLDYBWbaeXO9PZrz24SP6oZPHoNnbR+ZVg4RfGv
 iNK/nWv31X0uHU6J9PUov/E6ZAauu17jJ7bWaBDcm26ars0FBrlUF9nA5/Wb8IunH1j1
 9VehoT6g/Aa3wi7Zag8zyInArEn0ACcjNfrEhcbvfu5SEBz2oclUZWpERT5nIuHwMkIH
 FldJUFEIo4A4f8NXu3vIIIhmHz7ixgq7ase/Y3WmOV+NbjLXuL1BXPZLQ8ZUjkED22WD
 M2a4gqHKrR6DzhBivWkgiNKClAyJpKSk5i7FA6O3PLWFMSuw7H0ntqPnHcCgLsRO3h/B
 rfiw==
X-Gm-Message-State: AOAM532uxoQ0+JeHni6sXmoStZdTp4cYCcNQfNMACVujuBuXruSZZvY7
 sY78U7T6CnPXX1P5deBwsLE=
X-Google-Smtp-Source: ABdhPJxUSdb/TSThZOC0vW4s1x5WY/iq6HsaI5MpPqZA8s1xJqhodoM4fRPhgnAeb9XSAPuwLQqFGg==
X-Received: by 2002:ac2:4884:: with SMTP id x4mr539877lfc.650.1629336071117;
 Wed, 18 Aug 2021 18:21:11 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id bt25sm131947lfb.282.2021.08.18.18.21.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 18:21:10 -0700 (PDT)
Date: Thu, 19 Aug 2021 04:21:08 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210819012108.3isqi4t6rmd5fd5x@kari-VirtualBox>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-6-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210808162453.1653-6-pali@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mGWk9-0007pv-On
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

On Sun, Aug 08, 2021 at 06:24:38PM +0200, Pali Roh=E1r wrote:
> Other fs drivers are using iocharset=3D mount option for specifying chars=
et.
> So mark iocharset=3D mount option as preferred and deprecate nls=3D mount
> option.
 =

One idea is also make this change to fs/fc_parser.c and then when we
want we can drop support from all filesystem same time. This way we
can get more deprecated code off the fs drivers. Draw back is that
then every filesstem has this deprecated nls=3D option if it support
iocharsets option. But that should imo be ok.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
