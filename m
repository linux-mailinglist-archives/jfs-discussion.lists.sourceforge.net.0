Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 855E668EC72
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 Feb 2023 11:11:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pPhQ4-0002PZ-9g;
	Wed, 08 Feb 2023 10:11:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hirofumi@parknet.co.jp>) id 1pPhQ3-0002PQ-7h;
 Wed, 08 Feb 2023 10:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jl+KN3qyNjojAC1vJkzxArVhol+OVlrQ5VVg5+og9dw=; b=CIJguZitsF2Qu6Oc3+JXx1w0rw
 6CGZcTbPxW2JlwwBggLz7MkZ/P4eI9lHjExw5H+Z3jzm6W/X0/8IOgCs0IJjfUXD2PEM20NesIYQL
 odDCkBtF6J5ffxy0OADOhTdKMviBrzTAsUWlTmewWDStm/x2YuRxdNW44en3GhgNFkwo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jl+KN3qyNjojAC1vJkzxArVhol+OVlrQ5VVg5+og9dw=; b=U29xC0YJG36q2jQ/NDbSfK28a5
 8yESTtsQUwDVlrD42mAbtKHK9RznQcebApOLRMj0wA9gb2tJ0XW0UvP3d2BTFhVOnz2lKEGXBifjj
 syIfhQ2yYIusOIS4aoOS6uBEmHuvKK+BI973Yhe8v7U6ZQ6fb2nwzWQBBMRjmp7PN0vs=;
Received: from mail.parknet.co.jp ([210.171.160.6])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pPhPx-0005rG-K7; Wed, 08 Feb 2023 10:11:13 +0000
Received: from ibmpc.myhome.or.jp (server.parknet.ne.jp [210.171.168.39])
 by mail.parknet.co.jp (Postfix) with ESMTPSA id AA2422055F9C;
 Wed,  8 Feb 2023 19:11:02 +0900 (JST)
Received: from devron.myhome.or.jp (foobar@devron.myhome.or.jp [192.168.0.3])
 by ibmpc.myhome.or.jp (8.17.1.9/8.17.1.9/Debian-2) with ESMTPS id
 318AB0tG072967
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 8 Feb 2023 19:11:01 +0900
Received: from devron.myhome.or.jp (foobar@localhost [127.0.0.1])
 by devron.myhome.or.jp (8.17.1.9/8.17.1.9/Debian-2) with ESMTPS id
 318AB0ol317789
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Wed, 8 Feb 2023 19:11:00 +0900
Received: (from hirofumi@localhost)
 by devron.myhome.or.jp (8.17.1.9/8.17.1.9/Submit) id 318AAvG8317788;
 Wed, 8 Feb 2023 19:10:57 +0900
From: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
In-Reply-To: <20230204105703.pnc6vcy4hvmvvm3b@pali> ("Pali
 =?iso-8859-1?Q?Roh=E1r=22's?= message of
 "Sat, 4 Feb 2023 11:57:03 +0100")
References: <20221226142150.13324-1-pali@kernel.org>
 <20221226142150.13324-2-pali@kernel.org>
 <874jsyvje6.fsf@mail.parknet.co.jp>
 <20230204105703.pnc6vcy4hvmvvm3b@pali>
Date: Wed, 08 Feb 2023 19:10:57 +0900
Message-ID: <874jrwfowe.fsf@mail.parknet.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Pali Rohár <pali@kernel.org> writes: >> This patch fixes the
    issue of utf-8 partially only. I think we can't >> still recommend only partially
    working one. > > With this patch FAT_DEFAULT_IOCHARSET=utf8 is same what
   was > FAT_DEFAULT_UTF [...] 
 
 Content analysis details:   (-0.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [210.171.160.6 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1pPhPx-0005rG-K7
Subject: Re: [Jfs-discussion] [RFC PATCH v2 01/18] fat: Fix iocharset=utf8
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Pavel Machek <pavel@ucw.cz>,
 linux-cifs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Salah Triki <salah.triki@gmail.com>, Shyam Prasad N <sprasad@microsoft.com>,
 Tom Talpey <tom@talpey.com>, Kari Argillander <kari.argillander@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anton Altaparmakov <anton@tuxera.com>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 Paulo Alcantara <pc@cjr.nz>, linux-kernel@vger.kernel.org,
 Ronnie Sahlberg <lsahlber@redhat.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Pali Roh=E1r <pali@kernel.org> writes:

>> This patch fixes the issue of utf-8 partially only. I think we can't
>> still recommend only partially working one.
>
> With this patch FAT_DEFAULT_IOCHARSET=3Dutf8 is same what was
> FAT_DEFAULT_UTF8=3Dy without this patch. And option FAT_DEFAULT_UTF8 was
> recommended in description before "select the next option instead if you
> would like to use UTF-8 encoded file names by default."

It is not recommending to use UTF-8 as default, right? I wanted to say
no warning and recommend has big difference, and I can't recommend the
incompatible behavior that creates the case sensitive filename.

>> Still broken, so I think we still need the warning here (would be
>> tweaked warning).
>
> There was no warning before for utf8=3D1. And with this patch
> iocharset=3Dutf8 should have same behavior as what was utf8=3D1 before th=
is
> patch.
>
> So if we should show some warning for utf8=3D1 then it is somehow not
> related to this patch and it should be done separately, possible also to
> the current codebase and before this patch.

Sure, you are right.

Thanks.
-- =

OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
