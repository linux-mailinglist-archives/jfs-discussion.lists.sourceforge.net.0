Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EB0D13006
	for <lists+jfs-discussion@lfdr.de>; Mon, 12 Jan 2026 15:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qN2xTqYGsDwxH1EimYwu028GjL86UTujiRqkH1wtd+8=; b=TqU4t/ir+sfk3ohR9S9UER3QdS
	y8XlYFuBLYuCgoxPhBMqxfEFzxdYd/XN6U7HLni2uljigCpUKFbP3Y4koPjnr5nFxjCuvCFt4qVve
	kO7SMuYh+r9+nHoiD5HEQPq1ru8gF18orKK5mZYLfqpJJ8s8IvDcyb+ktGsCzRq8w/I0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vfIZu-00080M-Oj;
	Mon, 12 Jan 2026 14:07:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <xqzmiplz@yandex.ru>) id 1vfGwJ-0006jo-MP
 for jfs-discussion@lists.sourceforge.net;
 Mon, 12 Jan 2026 12:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=93Qi5jWRQzc3Y292YbuuVHlL8GtgAckLhC98Vj00Zns=; b=jxgZcjjEOxtKVnfHMccd6FX52P
 l+HAuXosAi3vkM7kDU6eqhAS6Tp1wKKs6AF7tAx6TMV93Gz1jb8eyrayD4OsgLGntegxguH6anrEN
 3+dApHGJmLu58DvsjvGz7Di/Q12u2eo2FBsYi5LkgUYckjL+pOI9COtar9IGD6O6BEtU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=93Qi5jWRQzc3Y292YbuuVHlL8GtgAckLhC98Vj00Zns=; b=l
 aj5hCNb4dS0pWGGZMrFzgJqajp57PLCpYhm1nwCn1ei70kFNlPAVgCLh1GbBOL+5CjZFfMyulkn27
 NQLHnW0PkxQrBeECeAJbXSePN5N/TlErNBzWusSqy/gWnhFExo7zHa84qFpQQ2GnQZnc4KVQ/7u7M
 fLkT72OS2q34jbi8=;
Received: from forward103d.mail.yandex.net ([178.154.239.214])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vfGwJ-0001PX-N6 for jfs-discussion@lists.sourceforge.net;
 Mon, 12 Jan 2026 12:22:32 +0000
Received: from mail-nwsmtp-smtp-production-main-73.iva.yp-c.yandex.net
 (mail-nwsmtp-smtp-production-main-73.iva.yp-c.yandex.net
 [IPv6:2a02:6b8:c0c:41d:0:640:8e35:0])
 by forward103d.mail.yandex.net (Yandex) with ESMTPS id 88CBDC4965;
 Mon, 12 Jan 2026 15:22:18 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-73.iva.yp-c.yandex.net
 (smtp/Yandex) with ESMTPSA id FMRTNaLGAOs0-dI5NwXRk; 
 Mon, 12 Jan 2026 15:22:18 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1768220538; bh=93Qi5jWRQzc3Y292YbuuVHlL8GtgAckLhC98Vj00Zns=;
 h=Message-ID:Date:Cc:Subject:To:From;
 b=R10VWclDhOvX/n3HLy6JzHrr1NaybQzurVlgtl6mRTJGjjUI38ldLhj8Bn7U9yWDu
 Wjl64EWrVwGQ0AZbI3a4OQ9kb65HcOnwSwVwCvvQ58Uvwzz/dS/4Ol8jEV1eYWHWoB
 B51mje1YuO/3QDU4oozIMzlk1sC7ISdDO4Q1Hw6w=
Authentication-Results: mail-nwsmtp-smtp-production-main-73.iva.yp-c.yandex.net;
 dkim=pass header.i=@yandex.ru
To: shaggy@kernel.org
Date: Mon, 12 Jan 2026 15:22:12 +0300
Message-ID: <20260112122212.7133-1-xqzmiplz@yandex.ru>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Syzkaller reported a slab-out-of-bounds read in dtSearch.
 This occurs when the driver attempts to access the slot array using an index
 read from the stbl (sorted table) without validation. When working with an
 inline directory (bn == 0), the p pointer refers to the dtroot_t structure
 embedded in jfs_inode_info. This buffer can hold DTROOTMAXSLOT slots. However, 
 the pointer is cast to (d [...] 
 Content analysis details:   (0.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [xqzmiplz(at)yandex.ru]
 1.0 RCVD_IN_UCE2           RBL: IP Subnet Listed in UCEPROTECT Level 2
 [178.154.239.214 listed in dnsbl-2.uceprotect.net]
X-Headers-End: 1vfGwJ-0001PX-N6
X-Mailman-Approved-At: Mon, 12 Jan 2026 14:07:29 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix slab-out-of-bounds read in
 dtSearch
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
From: Vadim Havkin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Vadim Havkin <xqzmiplz@yandex.ru>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 lvc-project@linuxtesting.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller reported a slab-out-of-bounds read in dtSearch. This occurs
when the driver attempts to access the slot array using an index read
from the stbl (sorted table) without validation.

When working with an inline directory (bn == 0), the p pointer refers
to the dtroot_t structure embedded in jfs_inode_info. This buffer can
hold DTROOTMAXSLOT slots. However, the pointer is cast to (dtpage_t *),
which corresponds to a full page (DTPAGEMAXSLOT slots). If a corrupted
image contains an index in stbl greater than or equal to DTROOTMAXSLOT,
the driver calculates an address outside the allocated slab object.

BUG: KASAN: slab-out-of-bounds in dtSearch+0x21fd/0x2270 fs/jfs/jfs_dtree.c:645
Read of size 1 at addr ffff88810d94b5d4 by task syz-executor107/859
Call Trace:
 <TASK>
 kasan_report+0xb9/0xf0
 dtSearch+0x21fd/0x2270
 jfs_lookup+0x180/0x340
 lookup_open.isra.0+0x7a7/0x1430
 path_openat+0xcc0/0x2960
 do_filp_open+0x1c3/0x410
 do_sys_openat2+0x164/0x1d0
 __x64_sys_openat+0x13c/0x1f0
 </TASK>

Add a check to ensure that the index read from stbl is valid.
For the inline root (bn == 0), the index must be strictly less than
DTROOTMAXSLOT. Note that stbl values are type s8, so they cannot
exceed the external page limit (DTPAGEMAXSLOT = 128).

Found by Linux Verification Center (linuxtesting.org) with Syzkaller.

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Vadim Havkin <xqzmiplz@yandex.ru>
---
 fs/jfs/jfs_dtree.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 93db6eec4465..d2bdadaf4672 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -634,7 +634,8 @@ int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
 		for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
 			index = base + (lim >> 1);
 
-			if (stbl[index] < 0) {
+			if (stbl[index] < 0 ||
+			    (bn == 0 && stbl[index] >= DTROOTMAXSLOT)) {
 				rc = -EIO;
 				goto out;
 			}
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
