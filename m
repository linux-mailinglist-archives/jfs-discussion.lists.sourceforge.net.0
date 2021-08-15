Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEB193ED908
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Aug 2021 16:37:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mFdk8-0000Mo-R2; Mon, 16 Aug 2021 14:37:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hirofumi@parknet.co.jp>)
 id 1mF7RY-0007pV-IB; Sun, 15 Aug 2021 04:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d76Ggh/N/lCLU5eDaa+qGJt5trFiONekjLH4yrFeh8Y=; b=QQ/fh8HUouOJyDZSm4l4MPtS9U
 LwC9uB7eDNSeAhQi9oxDpFJIuVqPlK7b6MDxZ8ZL8UM5vWoHRGfMFzJFOkG0+v4KZUnqzztbIEPOI
 6QjL98jWrGsFOCC0CFKS2c67eli5JkLm1xcK20QFkniVU1F1JVBvDt/AAQncMu0Q80yg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d76Ggh/N/lCLU5eDaa+qGJt5trFiONekjLH4yrFeh8Y=; b=RKfC8uOLC4TfzUh9FzTe27ANuF
 aNp+kgG6Gt4+mjQ1dhlT1wQ3Aeem+DFFwxVi46GxTz58mj23t0pypClGMtbYgMlYJRSRtAlyMW4n9
 gdy6BncEt4gijUk3phUG4Q71ZSYsOaaKoKj2HDc2Y96NkFGiut+TfbzB2SurR02CUsus=;
Received: from mail.parknet.co.jp ([210.171.160.6])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mF7RT-006tEg-DS; Sun, 15 Aug 2021 04:08:16 +0000
Received: from ibmpc.myhome.or.jp (server.parknet.ne.jp [210.171.168.39])
 by mail.parknet.co.jp (Postfix) with ESMTPSA id 8176115F93A;
 Sun, 15 Aug 2021 12:43:01 +0900 (JST)
Received: from devron.myhome.or.jp (foobar@devron.myhome.or.jp [192.168.0.3])
 by ibmpc.myhome.or.jp (8.15.2/8.15.2/Debian-22) with ESMTPS id
 17F3gtqK259876
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sun, 15 Aug 2021 12:42:56 +0900
Received: from devron.myhome.or.jp (foobar@localhost [127.0.0.1])
 by devron.myhome.or.jp (8.15.2/8.15.2/Debian-22) with ESMTPS id
 17F3gtTX1634462
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sun, 15 Aug 2021 12:42:55 +0900
Received: (from hirofumi@localhost)
 by devron.myhome.or.jp (8.15.2/8.15.2/Submit) id 17F3glQI1634454;
 Sun, 15 Aug 2021 12:42:47 +0900
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-2-pali@kernel.org>
Date: Sun, 15 Aug 2021 12:42:47 +0900
In-Reply-To: <20210808162453.1653-2-pali@kernel.org> ("Pali
 =?iso-8859-1?Q?Roh=E1r=22's?= message
 of "Sun, 8 Aug 2021 18:24:34 +0200")
Message-ID: <87h7frtlu0.fsf@mail.parknet.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: parknet.co.jp]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mF7RT-006tEg-DS
X-Mailman-Approved-At: Mon, 16 Aug 2021 14:37:35 +0000
Subject: Re: [Jfs-discussion] [RFC PATCH 01/20] fat: Fix iocharset=utf8
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
 linux-kernel@vger.kernel.org,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Andrew Morton <akpm@linux-foundation.org>, Salah Triki <salah.triki@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Pali Roh=E1r <pali@kernel.org> writes:

> Currently iocharset=3Dutf8 mount option is broken and error is printed to
> dmesg when it is used. To use UTF-8 as iocharset, it is required to use
> utf8=3D1 mount option.
>
> Fix iocharset=3Dutf8 mount option to use be equivalent to the utf8=3D1 mo=
unt
> option and remove printing error from dmesg.

This change is not equivalent to utf8=3D1. In the case of utf8=3D1, vfat
uses iocharset's conversion table and it can handle more than ascii.

So this patch is incompatible changes, and handles less chars than
utf8=3D1. So I think this is clean though, but this would be regression
for user of utf8=3D1.

Thanks.
-- =

OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
