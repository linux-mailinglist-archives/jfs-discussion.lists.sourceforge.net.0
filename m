Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D47CABA0C
	for <lists+jfs-discussion@lfdr.de>; Sun, 07 Dec 2025 22:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:Sender:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rGeVA16XWPrQdkgH89p6x3PFYWJZFxovn/tFTVjX+18=; b=eez0do2/U8UObnqyTRvtF38b7n
	e9ayj9lgK3X4zuC0pelF/sh5rkgKKVEEfGpT3x7R+lvq/ZPDDGELQF87OMw3GZUrQKZiNqROq1Ewr
	fJXU7GZwYvzsWwdmxeM6ACmMr9DW9fAF6NfBzGSc1b5wMaei17Xz7udyU22+gHg69A2E=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vSLzZ-0002DP-6y;
	Sun, 07 Dec 2025 21:08:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kartikey406@gmail.com>) id 1vS8cz-00077j-W9
 for jfs-discussion@lists.sourceforge.net;
 Sun, 07 Dec 2025 06:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QWAO72Z2iAFbIFWQdy5xnnkqY/ScKvkKahaKLosP+Es=; b=lmdKONIPEyvhbzsKeH3aXLm7Uz
 sOWXSOdR+uDVfe2fmJBwL+26VGKpEaP3AF0isOJCc/lwY6XuBWynoZ7zSLiPqoGf/aIqYKDVV+7D6
 yvZGP8TZkSh6B0gEwE/8gT3xlKB7RKWqDcJBy0+sdQsjxZE2X6r+cB+hq1zxDLpG2dHg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QWAO72Z2iAFbIFWQdy5xnnkqY/ScKvkKahaKLosP+Es=; b=d
 hHxzoeIdxeiRhkC0lQUhc4+/Mzm/RwIt6ZNIY/FQJJ3aO0oShRCnWp6qicypF4k5tRcFq+xh2aUnS
 NlcBuzIhyaFpppL+pgXDOml6sJ9F+HkUUHRDNJcxauAd6qi43UDLkxN/lL+fn7IpcqoUelvNlWrk4
 ykvp/wgtrKrxDEF4=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vS8ci-0004Ma-2N for jfs-discussion@lists.sourceforge.net;
 Sun, 07 Dec 2025 06:52:00 +0000
Received: by mail-pf1-f181.google.com with SMTP id
 d2e1a72fcca58-7ba92341f83so4700080b3a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 06 Dec 2025 22:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765090309; x=1765695109; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=QWAO72Z2iAFbIFWQdy5xnnkqY/ScKvkKahaKLosP+Es=;
 b=FP9ipuRCDxJWvuXlj8V6rvc05+6oeZUKERR0Ce6j7fL1suz95ar1y5BbhPnY3NVQ1E
 N4S2joxdFGVscf7NaElnGsoLpyi1O7CIU9r4x3jfMv2qPe9CyP5YACA8jOFRbu6+6uox
 JHONHWoxJN7OybYEiYoGTMxvhS2MyHK/bsqhbVJ23rc7XxEKBt0yaHY1osJJ0wLgI2Ym
 NWYxesdo7nCNGQfyBKLjjUYQ3+SAw862idknYKK0qQd2ne8pWtTaAC9G8/ms96lPD7tP
 f9JssPFwt9sPxw581Hzeer3AuJfG7J/8jGcJUbVxcZ3PdGsImGs++I4kvqm2YCCNaiwx
 oR0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765090309; x=1765695109;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QWAO72Z2iAFbIFWQdy5xnnkqY/ScKvkKahaKLosP+Es=;
 b=QpwFdXuG/aJvEnAkloaYkuF2QZtDgbrk/XXgT3wvpbVzKC+0Z1PxMsPhlK7v1UC1dh
 DlmpYqE9Cu5jiXAosFVrGxD7nctlHWzAzRjZZwNfTvn9WPHemutDcVMGKbt7uckYhp9d
 ZCb7pPBwsZ1ymPmONw5OLFB6ZKBlX3bgP+k97q99OKntKoV3zyHvqCHT75zkgy+JzOvO
 u882N0NJ/s6jHRI/MBgVR4OVAoRTqD+clDGi7Pspkd1lh4dRuYJqUUWIXDAfvUwEI91b
 7nZ+FZe1COvxMtBwmJbOHIke61yg/BmODY+DHJclqc7spCuSSAAxCRZ8mBSpx/V4YY9R
 JJYA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXlzLdIUZYKhaF9qWnltACVfqAU9vaGPmYO+11pgRWikzawW7uDTXwF1NjODTGSDZStZagDbnJYsG//C8Xe6g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzzX1YIu2ydD2A4oUy4aeQTTuZiWWc4bd+EkCs/1fy7QkYAZ0oj
 RSakUPe8LrJ7F4of3WKgHpxtmBRTzcqOKXnGPPzQE7iEGlXmsnSBkJ7F
X-Gm-Gg: ASbGncvdL7XYzN7gARULE5fvWraZPUkbDJYYd2ts8YPiAOKEixc9MaCLeTPINI42Hv+
 PekrDGBIXtsnijjfYuDT/ZOkRfPuddCXHeQ/QhB8sLLL3BV0Q3iSSZE8hCG1eSle4RFXa72cLqz
 kah3zLcy1L3X4ZDBBkYxyEthoNYA0e41fp+UpOdvNTwwUgSOQl3hsjbrweIZhRfkq0AN6WYn4TY
 K/cj2FVweb9XHjWX+RSCrpwRxk8ij9M6SFqsMB8nUyj6u1l3T+MIL3XwjJ7DwZuoCeHkcqdkQNe
 zAPtMiq6o/MsCBLQvA2mQBInNyAkFuF4gonxwUqJgwO9qTSKi/IluOKv4AtEPNm+sgcRlkw/XJ5
 jkDMJWG2OnKSL4I4WzVe/86iW1r4qhUQPK7PJTOWmxrFWB9qLS3LGUkS3xEDrAiH/dIlq/zJASR
 2ngVEe0HSkzPSeVERqJuwg74YMa9om7gfWnWxQ/OxHyONqEWVd9Z2/94B0mhCW6VMNuYM=
X-Google-Smtp-Source: AGHT+IGKLBAVrlWnCfTNdMzCf6W3jb7E215aZktJGw5E3/h0pYj0lS87phfTv/fiJqTr5iKnNPQygw==
X-Received: by 2002:a05:6a00:2347:b0:7a2:7c25:1f38 with SMTP id
 d2e1a72fcca58-7e8c2b94698mr3651966b3a.13.1765090309387; 
 Sat, 06 Dec 2025 22:51:49 -0800 (PST)
Received: from deepanshu-kernel-hacker..
 ([2405:201:682f:389d:6893:b3d4:beeb:8a65])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7e2af9393e9sm9733386b3a.63.2025.12.06.22.51.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Dec 2025 22:51:48 -0800 (PST)
To: shaggy@kernel.org,
	brauner@kernel.org
Date: Sun,  7 Dec 2025 12:21:30 +0530
Message-ID: <20251207065134.2610956-1-kartikey406@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When reusing transaction locks for DTREE operations,
 the index
 field may contain stale values from previous operations, causing assertion
 failures in dtSplitRoot(): ASSERT(dtlck->index == 0) This results in kernel
 crashes like: 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.181 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [kartikey406(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [kartikey406(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vS8ci-0004Ma-2N
X-Mailman-Approved-At: Sun, 07 Dec 2025 21:08:29 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix directory tree corruption in
 dtSplitRoot()
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
From: Deepanshu Kartikey via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Deepanshu Kartikey <kartikey406@gmail.com>
Cc: Deepanshu Kartikey <kartikey406@gmail.com>,
 jfs-discussion@lists.sourceforge.net, mjguzik@gmail.com,
 syzbot+a099d674daa27a9272db@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5039899992475208865=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============5039899992475208865==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

When reusing transaction locks for DTREE operations, the index field
may contain stale values from previous operations, causing assertion
failures in dtSplitRoot():

  ASSERT(dtlck->index == 0)

This results in kernel crashes like:

  kernel BUG at fs/jfs/jfs_dtree.c:1942!
  Call Trace:
   dtSplitRoot+0x1694/0x16c0 fs/jfs/jfs_dtree.c:1942
   dtSplitUp fs/jfs/jfs_dtree.c:1244 [inline]
   dtInsert+0x2525/0x5f40 fs/jfs/jfs_dtree.c:871
   jfs_create+0x6c8/0xa80 fs/jfs/namei.c:137

The bug occurs because txLock() has multiple code paths for lock
acquisition:

1. Fresh allocation (allocateLock) - correctly initializes index to 0
2. Lock reuse (same transaction) - skips initialization
3. Anonymous lock acquisition - skips initialization

Paths 2 and 3 jump directly to the grantLock label, bypassing the
index initialization. When dtSplitRoot() is called multiple times
within a batched transaction (which JFS uses for performance), it may
receive a reused lock with index=3 from a previous operation instead
of the expected index=0.

Example sequence:
  Transaction tid=1:
    - First dtSplitRoot: gets fresh lock, index=0 ✓
    - Modifies entries, index becomes 3
    - Lock returned to pool but not freed

  Transaction tid=1 (continues):
    - Second dtSplitRoot: reuses same lock
    - index still = 3 (stale value) ✗
    - ASSERT(index == 0) fails → crash

Fix by resetting dtlck->index to 0 at the grantLock label, but only
for operations with the tlckNEW flag set. This ensures:

- New pages (like dtSplitRoot) start with clean state (index=0)
- Existing pages preserve accumulated changes within a transaction
- No performance impact (only affects new page operations)

The tlckNEW flag is used by dtSplitRoot() when creating a new root
page, making this fix targeted to the exact scenario that requires
index=0.

Reported-by: syzbot+a099d674daa27a9272db@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=a099d674daa27a9272db
Signed-off-by: Deepanshu Kartikey <kartikey406@gmail.com>
---
 fs/jfs/jfs_txnmgr.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index c16578af3a77..5ce2fc17d967 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -811,6 +811,17 @@ struct tlock *txLock(tid_t tid, struct inode *ip, struct metapage * mp,
 	 * update tlock vector
 	 */
       grantLock:
+	/*
+	 * Reset index for new DTREE locks to ensure clean state.
+	 * When locks are reused, index may contain stale values from
+	 * previous operations. Operations like dtSplitRoot() expect
+	 * index to be 0 when creating new pages (tlckNEW flag).
+	 */
+	if ((type & tlckDTREE) && (type & tlckNEW)) {
+		struct dt_lock *dtlck = (struct dt_lock *)&tlck->lock;
+
+		dtlck->index = 0;
+	}
 	tlck->type |= type;
 
 	return tlck;
-- 
2.43.0



--===============5039899992475208865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5039899992475208865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============5039899992475208865==--
