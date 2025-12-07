Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C95CCABA09
	for <lists+jfs-discussion@lfdr.de>; Sun, 07 Dec 2025 22:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3FdDWVesCkU9HDjSBrsl8bpUF3p13rmiTd3RqfDGaJo=; b=mq2qZQn0EBpNSj/AaYLZpA9pQx
	d9Hi+YdXBH+FMsp0K+NP15k+RQrc4nOvZs8WlAw+5TiE4xbTEhdNMP4DifSuQFzUsjkqI251NNa/4
	vY6VnrjOg1DJUeXc2iaYF7/2TYxnKLlcRaeSvk78yXPjKbDmpT0jDiVLngs9fKb5KFpw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vSLzZ-0002De-Q0;
	Sun, 07 Dec 2025 21:08:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kartikey406@gmail.com>) id 1vS8iv-0004eW-PR
 for jfs-discussion@lists.sourceforge.net;
 Sun, 07 Dec 2025 06:58:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e31pJQGgbdFp8qgVDnCkMYCpVAZCje46ZRMyi85fPTA=; b=InTapPHWl2CEQhBttG1dGE9inQ
 3ZpZ8RMuPsfeEkJCNOs9UTm/w8WVWBK44DafpjUZ36OHHYwSZVACJBLFoWTJVudi8+2MHFVk21Ipc
 weBUumNZaCioZ3cUdsfjTDQ5QqY3dCM7xeUz222+e69gaUQqbBztaVoLAOQVyffG6Iok=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=e31pJQGgbdFp8qgVDnCkMYCpVAZCje46ZRMyi85fPTA=; b=e
 D6H4Lpqegn0Lc6NO4vxfDvbQy16bvohnQofT7Yo3Nih+xKi8lXwUPcW2rqUa+FGb3ikbACLRcOrBw
 717PeqzOPAn+AqaHHdqiBCSVDx4jgDPDhnAKJ8zog5YC+M8gCBUkXaNdGnZrJiybKAtxY4fEYfFbQ
 QO8uvzqL3hortyH0=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vS8iv-0004Y4-V2 for jfs-discussion@lists.sourceforge.net;
 Sun, 07 Dec 2025 06:58:26 +0000
Received: by mail-pj1-f51.google.com with SMTP id
 98e67ed59e1d1-340a5c58bf1so2297003a91.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 06 Dec 2025 22:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765090695; x=1765695495; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=e31pJQGgbdFp8qgVDnCkMYCpVAZCje46ZRMyi85fPTA=;
 b=aO1BeC7OKCX9D3e+2Pp6YGsp6sCvCrFGbbGeH370rcr7JhXmmBi8Ksw2Q4o00IjRFC
 yIcYDDIf8sEsqRtAwiMEpXBzg8xTw9IG+6TOdYWNiknyFeU+PhdE7mK23T5VI9ToaIYv
 hLUgeoWjCeRaBnCHrnyY3wAFIcbLteBoS82y1JjOkeZZAMPS5NWMetbqs5cRaOd0Z+zK
 QlQCxiYYZTY9MIJvpRqNTvzc9fW7Oa0vgsZpYnbnfIIx77twJU3bXLeIcMHrV1AbWidB
 mI5ENP4Ar7ouzuh7WaMZrhQke6/6b4Cg0d8+I15CN2cq59c49WVfeXKC39PJUcmMKRXn
 Mh/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765090695; x=1765695495;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=e31pJQGgbdFp8qgVDnCkMYCpVAZCje46ZRMyi85fPTA=;
 b=K4fdufwIeCFuaUVxfzJbXI9XZ2fFWEAlybl7I0WedZ1LObjrDxWkf0q5xM+qTlzYNL
 Y90nAAg+OKY/naRhLMirzYcQO8JvNfSf2KkoDQlPUQv50TLqWowmB/P+7PODBOj6ykcq
 X3dOApSOzROzF3o+bqmAsgWeGHoCxIduacEURi42mv6japEnUacj0R31yqKr6dJ0pZyz
 bfvrBgBMzOxpTyfMnO8E2THAhcEUneaPbR4nQdDIWuvoCZA8qgchheMsUMNNQ/HIbERx
 mzl1TbHlYrnHs+ChyGiZHyQODWwDc+xehpQ2yUeU01gYqdu7nrDbcVgJ2OBTPkq772Y/
 167A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXYp48N+8gXnzbO8gbBdOq9RFLUYiK4NiZuYMIDj9dE4GPslyV4gOmkBmDIJZS6Hi1SZ6TZSuh9Dquzir7Jtw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw5u56tDOS9pyPtYqGZq8sSEKtrJZ2rebrU2HYcp7Ooc4I/urUf
 FMmK6s+ddFdSezNMV3fVpvxpdbrlkMGRWMgs43ZYksu88FV0YrQz8P9V
X-Gm-Gg: ASbGncsvjHpVX4pxynKt3thThDd8czyC5ydDrICLynMz3zfeOMjZBLFsYk0BEobqDaf
 gNoRcRYHt88CnGkfWwH39YDkq7W+z8zko6dx0rXkM9J8LQcVNqK3c+N8FFL6H1xLr3xdFMc7Xkl
 sNpuZ8x/MYMKoxdWAf9I2LiJ7cZT2ohBrS089b+H9FnmbITmgzOUBXQVxNyeUZR1So4E4+KVWN5
 FKxXR3RMmE9GUbutXPr8eyPlBhz0siAD6k7U3nEHU+jiySfwoNKprJOjGnIKgyV0VZ/3+CzLwoO
 Oxnw8s9iEJa855qM/j2sPBsPvcpafudYwiFL03uzM3YGBMlS5X/kkfN7BKpQFze8FCKGjOUALN3
 H+EKtEnY34P10HNsX4r3WRLBFru3K7viXaqk4pKqjVHKlJ4z/phyibxbI/11WEG02/siGCz/JZ+
 aJZwAxPeKzPb8RRjZcxXG9cl+vk9bD6d1JcE2oidnaP7qRXEyOVBzuymgGmJKF1XzFyBtopXca+
 vydOw==
X-Google-Smtp-Source: AGHT+IHddt5/Uga5pkbbG71Gt44w7xeJXbFnimz19khQFtfhIOnypOcomPSiQh6tyrOU1UZiD3CZKg==
X-Received: by 2002:a17:90b:3ec1:b0:340:6f07:fefa with SMTP id
 98e67ed59e1d1-349a268034amr3677106a91.20.1765090695209; 
 Sat, 06 Dec 2025 22:58:15 -0800 (PST)
Received: from deepanshu-kernel-hacker..
 ([2405:201:682f:389d:6893:b3d4:beeb:8a65])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3494ea63e87sm8633964a91.12.2025.12.06.22.58.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Dec 2025 22:58:14 -0800 (PST)
To: shaggy@kernel.org,
	brauner@kernel.org
Date: Sun,  7 Dec 2025 12:28:01 +0530
Message-ID: <20251207065801.2611800-1-kartikey406@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [kartikey406(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [kartikey406(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vS8iv-0004Y4-V2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

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

Fix by resetting dtlck->index to 0 at the grantLock label, but only
for operations with the tlckNEW flag set. This ensures new pages start
with clean state while preserving accumulated changes on existing pages.

Reported-by: syzbot+a099d674daa27a9272db@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=a099d674daa27a9272db
Tested-by: Deepanshu Kartikey <kartikey406@gmail.com>
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



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
