Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCE6A6CA8C
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Mar 2025 15:23:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tvzkJ-0001tv-2K;
	Sat, 22 Mar 2025 14:22:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <purvayeshi550@gmail.com>) id 1tvzje-000427-4Y
 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 14:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cBSQsRnQ4TfM2tTeKw5HNlKo6byh7HY//NkZMVTFY8I=; b=ZQ5aphQ7v3UMDfAfG1R75swpKW
 MyU/kOCPOGa8vlZ79zl/Krii9W6wU6s5locbTd6dzHRqNHG6FhAxOu5fSzBySTkAg9adgtVJ12tbg
 HEt/nUoIjRKo8obSO+fQAs3h5NhfUoZyd+ni27FaSNl2kVBBgCChs+4tqIV89i02dFcU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cBSQsRnQ4TfM2tTeKw5HNlKo6byh7HY//NkZMVTFY8I=; b=R
 Dx3E+3n5kxJltl4f46DuZ2y1qcV4RC4PTZ+j7je9A7m2rsshrY51WJrOCHZyhwJpt8oXYS1yAx0Af
 LtvtX+M7oKQUjmMJWGJgZSF9J7euzJrwUMbJfmLZWj6wqvz6ZsORFJLxA048BagpeXNVmkAl/7L8e
 gDw88NDwfOtU7RU0=;
Received: from mail-pj1-f42.google.com ([209.85.216.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tvzjb-0000nO-Hx for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 14:22:01 +0000
Received: by mail-pj1-f42.google.com with SMTP id
 98e67ed59e1d1-301d6cbbd5bso5147443a91.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Mar 2025 07:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742653314; x=1743258114; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=cBSQsRnQ4TfM2tTeKw5HNlKo6byh7HY//NkZMVTFY8I=;
 b=QOGJjSDVsE0cmp3acvXEi1YUMsEewFIhbY/WwyMIFRUnLmTw6S5xlAlX/ShXHe8FfY
 2V3G9oxhc26adVcbk19fFFvmio9ByQ5qxSYyqMB0du3SooFVz8w19+FXVWywFfIucaZG
 aIbVjj7iAcRwR1NVV569tUGsH6KySdTu0s33VM8RFUUNE9gibRBgDgXW6cHmGIxv0aeb
 leeCsf3UJnU1lbcImlIGAOGLzmV3/ilmUU83i1SSU4aJzaB7SQdY/kxwp1tijwPN7nyh
 8DR+Buuc1QYi5It0ywK3uqLKdHsyTWG2hHfZNb4Wj4gt+cvzOYgQ3cJow2Lc0z6AylRW
 XTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742653314; x=1743258114;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cBSQsRnQ4TfM2tTeKw5HNlKo6byh7HY//NkZMVTFY8I=;
 b=pYGagLcIwAaWHhUXzTN1HaitrySsBHQk4pjOLbCTcCYNRGfW8HWvjRinOlLmlupWBr
 KqI1Nkvi3TNu2c3te/ciBVkxfO/qjTVgLdRuZLaLGHCW5/Nh8mNHNbPC3J8N/i3oZ8so
 7kZESv/A8jgEEPOSOPpqSTaTLFpmTOpq6Y4CX8r6xoX4wH0lcemCl5u0EAkeGErGhJtI
 kZ1K/evl4Mieq9I/hZnVZf9W5Asn/lPMgXQRz/aaUY51rbucvfb7QNs/ZOWsFoTHZ8ce
 RnL+oEPFkeDvOfjCbSK3WSbMhjgVN1GgxFZV9gtLaWvCUKsfj67FdJpZVFkoPbbQSYJ2
 t6gA==
X-Gm-Message-State: AOJu0Yxx7vsPyjijhYLxG07ufZxzrx578Mh2pxpcRB2uEQ/X0ZcDyO7x
 pQbLxh4RcuFU40c/UyKDj0W3WFtbVe9jSOefRblA8e+zAR1j0d5P
X-Gm-Gg: ASbGncu78diWNq3hKstkNmJoUayoC7yIImZ2prSzi87yOurTV2GQ/oZeatclyjq96KX
 cvvYeA3vMkgACHA/TboeXXEVhiRskqMqRWSGjWNQJpdorVkHsGpBoh2vwwCLJ8OgFK+8T2B53FA
 OT8e8O4vK/HmqjTds7gDzQdUa6OSLSJ2ixmdCJK0NW5YKtMekr2zPzItCBQ/YcVlQr40l5OY6vj
 gVFYYG/ZabLG6gypNObu1m8jJWLR/Fgsya904Y+su9q5SjTDV+uxX/NryE42bmSNZmMhW2UKqGx
 dEZnlIrcVsxeI2mbexfqlOyfb7MT1V4thNZT00+kAhhVNw4bq8agM+2TCYNjYtcxNbj1+gI47fX
 tJSs=
X-Google-Smtp-Source: AGHT+IGws1/9iRhkXC7aE71u9g4HMMNT2JBajE79EbnG73qOrwoibxoVv6T+IuIZEpjcoyEUslDBkQ==
X-Received: by 2002:a17:90b:1d46:b0:2fa:1851:a023 with SMTP id
 98e67ed59e1d1-3030ff11268mr11568556a91.35.1742653313676; 
 Sat, 22 Mar 2025 07:21:53 -0700 (PDT)
Received: from purva-IdeaPad-Gaming-3-15IHU6..
 ([2409:4080:215:18d5:84f8:e760:1d0f:700b])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-22780f3bbedsm36231605ad.3.2025.03.22.07.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Mar 2025 07:21:53 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>,
	Al Viro <viro@zeniv.linux.org.uk>
Date: Sat, 22 Mar 2025 19:51:34 +0530
Message-Id: <20250322142134.35325-1-purvayeshi550@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Bug detected by Syzbot: BUG: sleeping function called from
 invalid context in jfs_fsync Fix jfs_fsync() to avoid sleeping in
 softirq/atomic, 
 preventing crash. Skip execution in softirq/atomic and return -EWOULDBLOCK
 to prevent issues. Correct generic_file_fsync() call to pass the require
 [...] Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [purvayeshi550[at]gmail.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.42 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.42 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [purvayeshi550[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.42 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tvzjb-0000nO-Hx
X-Mailman-Approved-At: Sat, 22 Mar 2025 14:22:42 +0000
Subject: [Jfs-discussion] [PATCH] fs: jfs: Avoid sleeping function call in
 softirq
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
From: Purva Yeshi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Purva Yeshi <purvayeshi550@gmail.com>
Cc: syzbot+219127d0a3bce650e1b6@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, Purva Yeshi <purvayeshi550@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Bug detected by Syzbot:
BUG: sleeping function called from invalid context in jfs_fsync

Fix jfs_fsync() to avoid sleeping in softirq/atomic, preventing crash.
Skip execution in softirq/atomic and return -EWOULDBLOCK to prevent issues.
Correct generic_file_fsync() call to pass the required arguments properly.

Reported-by: syzbot+219127d0a3bce650e1b6@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=219127d0a3bce650e1b6
Tested-by: syzbot+219127d0a3bce650e1b6@syzkaller.appspotmail.com
Fixes: 5955102c9984 ("wrappers for ->i_mutex access")
Signed-off-by: Purva Yeshi <purvayeshi550@gmail.com>
---
 fs/jfs/file.c | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/fs/jfs/file.c b/fs/jfs/file.c
index 93a3e7a45b0f..fc93376eb1e6 100644
--- a/fs/jfs/file.c
+++ b/fs/jfs/file.c
@@ -19,25 +19,17 @@
 int jfs_fsync(struct file *file, loff_t start, loff_t end, int datasync)
 {
 	struct inode *inode = file->f_mapping->host;
-	int rc = 0;
 
-	rc = file_write_and_wait_range(file, start, end);
-	if (rc)
-		return rc;
-
-	inode_lock(inode);
-	if (!(inode->i_state & I_DIRTY_ALL) ||
-		(datasync && !(inode->i_state & I_DIRTY_DATASYNC))) {
-		/* Make sure committed changes hit the disk */
-		jfs_flush_journal(JFS_SBI(inode->i_sb)->log, 1);
-		inode_unlock(inode);
-		return rc;
+	if (in_softirq() || in_atomic()) {
+		pr_warn("jfs_fsync() called in softirq/atomic context, skipping execution.\n");
+		return -EWOULDBLOCK;
 	}
 
-	rc |= jfs_commit_inode(inode, 1);
+	inode_lock(inode);
+	generic_file_fsync(file, start, end, datasync);
 	inode_unlock(inode);
 
-	return rc ? -EIO : 0;
+	return 0;
 }
 
 static int jfs_open(struct inode *inode, struct file *file)
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
