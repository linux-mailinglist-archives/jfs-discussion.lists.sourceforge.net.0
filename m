Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A754A3E4E4C
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 23:14:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mDCba-0008UT-MX; Mon, 09 Aug 2021 21:14:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kari.argillander@gmail.com>)
 id 1mDCDE-0000c3-Ji; Mon, 09 Aug 2021 20:49:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xkmU2JA6zfghnyY/Y5tK7LzUc0w134KqplhtslWkECA=; b=aQ86QECOK3AnxSlpgaKw1aLREb
 wKPY0xYrfJsWSud/Wla77p2ADf1xLkRrwP+IlnyBRoeUbFUZM1bANtIT6sIbm6Eg0IWzNtYwh7bA6
 0wcbRH2JpNIhQWFA8sCwXt9KwFx/H4yJirAiEgh7Y5/K+L5Wii3HKUw9icvFHywcBQ1o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xkmU2JA6zfghnyY/Y5tK7LzUc0w134KqplhtslWkECA=; b=BD2DnfVOiEtjJFYmpgacDwvKHU
 BdxkN8mTeX20XX0FWSKoTxmjgoO3LnkIzdaBtgtNX9sdFG6ONGQa7ziSvO2bJC/7toW6JdQ/mTtRO
 zoeigLBoz4ztKjtkYDrZW82/cP+Ol9Xp+qCxVO+jkEccl680m/ASncTtQnMqsb1+9hSI=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDCDC-0013yY-Hg; Mon, 09 Aug 2021 20:49:32 +0000
Received: by mail-lf1-f44.google.com with SMTP id w20so10026116lfu.7;
 Mon, 09 Aug 2021 13:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=xkmU2JA6zfghnyY/Y5tK7LzUc0w134KqplhtslWkECA=;
 b=mZ4Sa4Cy9nZtqeAfq7Jkmya1uATv8yy7EhGkJDk80lfWc+kfkFvZ+WSdNqlGqWU81q
 zkpYWkyu5QIVhZd7MQA4fN7PEP9wrJtENPvxVQ4TL21YYUoQMD//o1aRzQ6Kw8Zrrlh7
 YcCHQFvDgfJQcMl7AeVcYtcikwVth+OjoiE2l64jnhD6eAcnFIHyF/8cI5Spd9P4TtTZ
 kfU2dysvfQmgG6RYX+Q6eaxVBMjYRqK1WQVEU6tUZ6OZeetbA0ATyJaw0uBHWPkjbBkg
 /8e3eKj72qySizLS6C0zqsnXZR2aUdI+JSlw9gs2XExPzIZmPbXdTE3zslzjZ+vNTrZV
 4r6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=xkmU2JA6zfghnyY/Y5tK7LzUc0w134KqplhtslWkECA=;
 b=dtyDHRox1s9vaRKXCpS/kzB9WIAfxPBXDm/oqDoNr6g/nvBVGgVuIdOeOwH2G4+gls
 GxQtxRQpUgWrV8SGPi3+GzoKNvPHlf9cvt5h1v3NU2TlUGwl+2CdwrGUPlVoKwlaZN05
 m6GfQlyG8MST9X2Cql00Yafe2ng1VBGIh0Br1SdSpLH2X+4wXjEq8YVGL7lt7NxSVliJ
 1m61eAVmIVx8eWbTkMbEbh8tKbPcTgV3AGsTz7Hu2FdgB9XwVfaMuTLtDraiDYflg8m+
 0IGEiY3q66bSzLxFAiTBVQImfdAJ3KJxqgG61qjJfne16QTkanYvwymxGiIDEWBjZkGE
 Mlgw==
X-Gm-Message-State: AOAM5306uRi4JnDbKxse/WsGwwtdkbq7IFQzDlg5/q5uWoRxKNMAa9qE
 PaGBkpv04ZhwAhggjHMoWzA=
X-Google-Smtp-Source: ABdhPJxDrhRAL27eit/VPKKI/hfTq1DZqCIZJjVrBY/8+bt4lqWFglWjlHsmgCisMCi3e3gqdpd18A==
X-Received: by 2002:a19:6403:: with SMTP id y3mr4789111lfb.120.1628542164006; 
 Mon, 09 Aug 2021 13:49:24 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
 by smtp.gmail.com with ESMTPSA id h18sm297957lfu.180.2021.08.09.13.49.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 13:49:23 -0700 (PDT)
Date: Mon, 9 Aug 2021 23:49:21 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Message-ID: <20210809204921.3ovrnbtzywsui4pt@kari-VirtualBox>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-3-pali@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210808162453.1653-3-pali@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (kari.argillander[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mDCDC-0013yY-Hg
X-Mailman-Approved-At: Mon, 09 Aug 2021 21:14:40 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 02/20] hfsplus: Add iocharset=
 mount option as alias for nls=
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

On Sun, Aug 08, 2021 at 06:24:35PM +0200, Pali Roh=E1r wrote:
> Other fs drivers are using iocharset=3D mount option for specifying chars=
et.
> So add it also for hfsplus and mark old nls=3D mount option as deprecated.

It would be good to also update Documentation/filesystems/hfsplus.rst.



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
