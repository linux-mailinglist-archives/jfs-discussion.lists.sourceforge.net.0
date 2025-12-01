Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F2334C978F7
	for <lists+jfs-discussion@lfdr.de>; Mon, 01 Dec 2025 14:21:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=StEiaOGccuh7zVL2j3QLUlloE+nGaYFjTm9BSsYLDhk=; b=jBYPAdghRkuTF98AvYp5N3TGEl
	TwdwJwbIkw11+YOpmxMilkuwbAMHZbao84RrmZswSh6Mavb5Eq1U5rEm77J/SxkL45ZH9qE08Uxr/
	v3E0iJoJvnvq2ZvOf/2j2CxmmYYsrOTPx3b6/iLyFiweYePS6HNNbpNMnWfIKJBnq+x8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQ3pn-00067M-H2;
	Mon, 01 Dec 2025 13:20:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jkoolstra@xs4all.nl>) id 1vQ3pm-00067F-H2
 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 13:20:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LT5wgVsl29pKDubx0XZlrI1RmKbShbuOlRccROLKSB8=; b=HUgIc5THkZSWLSLrKybgyzE/PU
 XXu7Pj26VbtpikIyWwLTC/V7otPNur/JaDaHOGGwGiOFUFqlkg8ijyNfY8g5w2UIgcNw2xcQCxaOR
 Hpjqg14iSa04nnL+jm/jqcxLuooUkBV8LlvrhLv7V75HEQQ1Gjuht+OJT4BIW5SYmxfE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LT5wgVsl29pKDubx0XZlrI1RmKbShbuOlRccROLKSB8=; b=G56I6mzlx5nHyOO0FmFfR5frB1
 R9SaUyyqqt9AZZuG908tGtWnsjXyVgU2U9+e+Vk87lKjT3PNYkbG4FnIGVPWwDna20qcToPmiywdU
 ooDkMR26DU/GSKyb/MloJs0peWbic6o1iGR9HQllMk5/I9DCySq6oSa1i5PekqktwoEg=;
Received: from ewsoutbound.kpnmail.nl ([195.121.94.186])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vQ3pl-0004nJ-Kt for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 13:20:54 +0000
X-KPN-MessageId: 37cad18b-ceb9-11f0-b0b9-00505699b430
Received: from mta.kpnmail.nl (unknown [10.31.161.191])
 by ewsoutbound.so.kpn.org (Halon) with ESMTPS
 id 37cad18b-ceb9-11f0-b0b9-00505699b430;
 Mon, 01 Dec 2025 14:25:34 +0100 (CET)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.135.189])
 by mta.kpnmail.nl (Halon) with ESMTP
 id 896ac185-ceb8-11f0-83ca-00505699891e;
 Mon, 01 Dec 2025 14:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=xs4all01;
 h=content-type:mime-version:subject:message-id:to:from:date;
 bh=LT5wgVsl29pKDubx0XZlrI1RmKbShbuOlRccROLKSB8=;
 b=rBiFNC+pkM9pLwjnbpvWV9ovCH+VyBFqK4GjlO+IKeCjq/vb1z8KK8zOF4ku8s3J6+/a252+nNpWg
 wud6IbWzst6nXhdo41iv4UlULP90Gi6dI9PBEAmaTiFQBa2ECUzMTXNH2xNpcjmQXv+OVSkh51CPu0
 eBU4pUw/GSsjWssbl3/dQ5bakkr2uKTz0ni/jPoWqWmg/iYjnC53rsjCS7Of9xiEHIOBBGTsjmyX46
 QPqcOV2tSfclhCJaUQCetjN+4I68prwo1AdNzmLoDnQfedTXcJ+rEXUwh2i9KRRmiOF0CBhSeA2Jzz
 xG53q5Od/7x13Ky2k7h5gXErgmXzB/w==
X-KPN-MID: 33|i1rceF0JEFqkYEb6Ky/aXBmQujVBnfUClmhwtFYI88HXmk1xr1QO4GJsI1IId2i
 6VVZYN3EZ7+OXdneUDKqEtA==
X-CMASSUN: 33|woIIoyuXrStV+e9kZO3zDjMDqzqwt1OF4oloXULd51PYuXw/uRikTJAMjMRaeX8
 1R9urENB3+XNimtYzuw7Shw==
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh04 (cpxoxapps-mh04.personalcloud.so.kpn.org
 [10.128.135.210]) by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
 id 895cd877-ceb8-11f0-94b1-00505699eff2;
 Mon, 01 Dec 2025 14:20:42 +0100 (CET)
Date: Mon, 1 Dec 2025 14:20:42 +0100 (CET)
To: brauner@kernel.org, gabriel@krisman.be, jlayton@kernel.org,
 neil@brown.name, shaggy@kernel.org, viro@zeniv.linux.org.uk
Message-ID: <918405804.66343.1764595242232@kpc.webmail.kpnmail.nl>
In-Reply-To: <20251118164645.67401-1-jkoolstra@xs4all.nl>
References: <20251028232329.430752-1-jkoolstra@xs4all.nl>
 <20251118164645.67401-1-jkoolstra@xs4all.nl>
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Originating-IP: 178.231.9.90
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Below syzbot bug has not been fixed yet. If anyone has time
 I would greatly appreciate a review of my patch, so it can be moved along.
 It has been sitting for quite a few weeks. Thanks, Jori. > Op 29-10-2025
 00:23 CET schreef Jori Koolstra <jkoolstra@xs4all.nl>: > > > Syzbot reported
 a general protection fault in inode_set_ctime_current. > This resulted from
 the following circumstances: wh [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [195.121.94.186 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vQ3pl-0004nJ-Kt
Subject: [Jfs-discussion] [PATCH] jfs: dtInsertEntry can result in buffer
 overflow on corrupted jfs filesystems
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
From: Jori Koolstra via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jori Koolstra <jkoolstra@xs4all.nl>
Cc: jfs-discussion@lists.sourceforge.net, skhan@linuxfoundation.org,
 linux-kernel@vger.kernel.org,
 syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Below syzbot bug has not been fixed yet. If anyone has time I would
greatly appreciate a review of my patch, so it can be moved along.
It has been sitting for quite a few weeks.

Thanks,
Jori.

> Op 29-10-2025 00:23 CET schreef Jori Koolstra <jkoolstra@xs4all.nl>:
> 
>  
> Syzbot reported a general protection fault in inode_set_ctime_current.
> This resulted from the following circumstances: when creating a new file
> via dtInsert, BT_GETSEARCH may yield a pointer to a dtroot which is
> embedded directly in the jfs_inode_info. When finally dtInsertEntry is
> called, if the freelist field or any next field of a slot of the dtpage
> is corrupted, this may result in memory corruption of the parent
> directory inode.
> 
> In this case the i_sb field was corrupted, which raised the gpf when
> in inode_set_ctime_current i_sb was dereferenced to access s_time_gran.
> 
> I tested the patch using the syzbot reproducer and doing some basic
> filesystem operations on a fresh jfs fs, such as "cp -r /usr/include/
> /mnt/jfs/" and "rm -r /mnt/jfs/include/n*"
> 
> Signed-off-by: Jori Koolstra <jkoolstra@xs4all.nl>
> Reported-by: syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com
> Closes: https://syzbot.org/bug?extid=cd7590567cc388f064f3


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
