Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 945BB3ED909
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Aug 2021 16:37:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mFdk8-0000Mv-SU; Mon, 16 Aug 2021 14:37:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hirofumi@parknet.co.jp>)
 id 1mFEEZ-00052E-1q; Sun, 15 Aug 2021 11:23:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OnP11bPDlpAEVsIIjq6VI522If5hydJfUQBX4AyP084=; b=iRw0fNRZ32sC9yHSz4cuNl9clo
 ZenU1bE4cZMkM3Fr2Dy2wtPZqPAWoc7E+Nv1cDRvxSNrQDaphJNRkYxAtkEXyIR9K+uKoBUcu4z+H
 3VnGXhk295L3vUUNLmvARsuJvRM8rrqetN19Qnt8uTRnDtLFbl7IWK4NNuW1pU/QIAmo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OnP11bPDlpAEVsIIjq6VI522If5hydJfUQBX4AyP084=; b=Bpo8APXVhZm2znw5LpdhPpqw0m
 Az3lzoyHIO3Q2a7Jk51xJvV0eCBsH3tu7TsCF4hOUkQe9DTcS5vabnyl98QgGnwXRs88nlQ3Cdnyx
 dw2bnBywLZlJRRZI+zjdRk7ZaG8PbvgAfHQvYyEdDrPvvvPzs8efcb5WHxbx9YtA4WMA=;
Received: from mail.parknet.co.jp ([210.171.160.6])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mFEEV-0079T0-IT; Sun, 15 Aug 2021 11:23:18 +0000
Received: from ibmpc.myhome.or.jp (server.parknet.ne.jp [210.171.168.39])
 by mail.parknet.co.jp (Postfix) with ESMTPSA id D641815F93A;
 Sun, 15 Aug 2021 20:23:09 +0900 (JST)
Received: from devron.myhome.or.jp (foobar@devron.myhome.or.jp [192.168.0.3])
 by ibmpc.myhome.or.jp (8.15.2/8.15.2/Debian-22) with ESMTPS id
 17FBN8lj265086
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sun, 15 Aug 2021 20:23:09 +0900
Received: from devron.myhome.or.jp (foobar@localhost [127.0.0.1])
 by devron.myhome.or.jp (8.15.2/8.15.2/Debian-22) with ESMTPS id
 17FBN8Jk1660981
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sun, 15 Aug 2021 20:23:08 +0900
Received: (from hirofumi@localhost)
 by devron.myhome.or.jp (8.15.2/8.15.2/Submit) id 17FBN6An1660978;
 Sun, 15 Aug 2021 20:23:06 +0900
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-2-pali@kernel.org>
 <87h7frtlu0.fsf@mail.parknet.co.jp>
 <20210815094224.dswbjywnhvajvzjv@pali>
Date: Sun, 15 Aug 2021 20:23:06 +0900
In-Reply-To: <20210815094224.dswbjywnhvajvzjv@pali> ("Pali
 =?iso-8859-1?Q?Roh=E1r=22's?= message of
 "Sun, 15 Aug 2021 11:42:24 +0200")
Message-ID: <871r6vt0it.fsf@mail.parknet.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tuxera.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1mFEEV-0079T0-IT
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

To: Pali Roh=E1r <pali@kernel.org>
Cc: linux-fsdevel@vger.kernel.org,  linux-ntfs-dev@lists.sourceforge.net,  =
linux-cifs@vger.kernel.org,  jfs-discussion@lists.sourceforge.net,  linux-k=
ernel@vger.kernel.org,  Alexander Viro <viro@zeniv.linux.org.uk>,  Jan Kara=
 <jack@suse.cz>,  "Theodore Y . Ts'o" <tytso@mit.edu>,  Luis de Bethencourt=
 <luisbg@kernel.org>,  Salah Triki <salah.triki@gmail.com>,  Andrew Morton =
<akpm@linux-foundation.org>,  Dave Kleikamp <shaggy@kernel.org>,  Anton Alt=
aparmakov <anton@tuxera.com>,  Pavel Machek <pavel@ucw.cz>,  Marek Beh=FAn =
<marek.behun@nic.cz>,  Christoph Hellwig <hch@infradead.org>
Subject: Re: [RFC PATCH 01/20] fat: Fix iocharset=3Dutf8 mount option
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Gcc: nnimap+ibmpc.myhome.or.jp:Sent
--text follows this line--
To: Pali Roh=E1r <pali@kernel.org>
Cc: linux-fsdevel@vger.kernel.org,  linux-ntfs-dev@lists.sourceforge.net,  =
linux-cifs@vger.kernel.org,  jfs-discussion@lists.sourceforge.net,  linux-k=
ernel@vger.kernel.org,  Alexander Viro <viro@zeniv.linux.org.uk>,  Jan Kara=
 <jack@suse.cz>,  "Theodore Y . Ts'o" <tytso@mit.edu>,  Luis de Bethencourt=
 <luisbg@kernel.org>,  Salah Triki <salah.triki@gmail.com>,  Andrew Morton =
<akpm@linux-foundation.org>,  Dave Kleikamp <shaggy@kernel.org>,  Anton Alt=
aparmakov <anton@tuxera.com>,  Pavel Machek <pavel@ucw.cz>,  Marek Beh=FAn =
<marek.behun@nic.cz>,  Christoph Hellwig <hch@infradead.org>
Subject: Re: [RFC PATCH 01/20] fat: Fix iocharset=3Dutf8 mount option
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Gcc: nnimap+ibmpc.myhome.or.jp:Sent
--text follows this line--
Pali Roh=E1r <pali@kernel.org> writes:

>> This change is not equivalent to utf8=3D1. In the case of utf8=3D1, vfat
>> uses iocharset's conversion table and it can handle more than ascii.
>> =

>> So this patch is incompatible changes, and handles less chars than
>> utf8=3D1. So I think this is clean though, but this would be regression
>> for user of utf8=3D1.
>
> I do not think so... But please correct me, as this code around is mess.
>
> Without this change when utf8=3D1 is set then iocharset=3D encoding is us=
ed
> for case-insensitivity implementation (toupper / tolower conversion).
> For all other parts are use correct utf8* conversion functions.
>
> But you use touppper / tolower functions from iocharset=3D encoding on
> stream of utf8 bytes then you either get identity or some unpredictable
> garbage in utf8. So when comparing two (different) non-ASCII filenames
> via this method you in most cases get that filenames are different.
> Because converting their utf8 bytes via toupper / tolower functions from
> iocharset=3D encoding results in two different byte sequences in most
> cases. Even for two utf8 case-insensitive same strings.
>
> But you can play with it and I guess it is possible to find two
> different utf8 strings which after toupper / tolower conversion from
> some iocharset=3D encoding would lead to same byte sequence.
>
> This patch uses for utf8 tolower / touppser function simple 7-bit
> tolower / toupper ascii function. And so for 7-bit ascii file names
> there is no change.
>
> So this patch changes behavior when comparing non 7-bit ascii file
> names, but only in cases when previously two different file names were
> marked as same. As now they are marked correctly as different. So this
> is changed behavior, but I guess it is bug fix which is needed.
> If you want I can put this change into separate patch.
>
> Issue that two case-insensitive same files are marked as different is
> not changed by this patch and therefore this issue stay here.

OK, sure. utf8 looks like broken than I was thinking (although user can
use iocharset=3Dascii and utf8=3D1 for this). The code might be better to
clean up a bit more though, looks like good basically.

One thing, please update FAT_DEFAULT_IOCHARSET help in Kconfig and
Documentation/filesystems/vfat.rst (with new warning about iocharset=3Dutf8=
).

Thanks.
-- =

OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
