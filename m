Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C80947B78E6
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Oct 2023 09:41:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qnwVE-0005ok-Oz;
	Wed, 04 Oct 2023 07:41:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qnwVD-0005od-7V
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 07:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5fUH5S4uz1EWWFstq5oEXMZSXkqH1sqcQ+Nf7tmZbwI=; b=WcR3Zd0DywKVGE0EKMZ6JzVaQL
 ch0IagXLPRbyxmfqI+l62E0wF4e1mSU0oOpWxgWhon4k+PtOHwIiu0TZH2aluR38VeH2AiQqcdePQ
 31TT3/gUqVvr5hda/JzgyYg/ilugKo9QhLjTrvur0RA5Ww1DsiJ6q1kFoNudxr8N/BjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5fUH5S4uz1EWWFstq5oEXMZSXkqH1sqcQ+Nf7tmZbwI=; b=M
 wsF02pII3PL4hTSn6DTrfNjqkB/b1DVASwjl+SZgPaQ0ZpVzf9pZvEKI1txXBqQTdMQgICMMktZki
 Iu6GPzSOiVqYnJPR6aJwSBdgxID4pNRE3S1LOKEKIebYN4Lys+6N+50NZVqzFCDP5MwLLTd7CBv1s
 lH1Bw5nSo9p3k8RM=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qnwV7-0002xI-Tg for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 07:41:02 +0000
Received: by mail-pg1-f195.google.com with SMTP id
 41be03b00d2f7-565e395e7a6so1034627a12.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 04 Oct 2023 00:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696405252; x=1697010052; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5fUH5S4uz1EWWFstq5oEXMZSXkqH1sqcQ+Nf7tmZbwI=;
 b=CYtU8csynooaVW1GxYGA8KfBvypZP417BKUQOtEDMK/tNtUy7ETQv+xL5C607z3PbL
 r+8De1q5alV9JeShzlUFDLUmr3+2pin8X8TLAZXXwNpTd/KuV/zH50OriHnSJxUnYE0U
 CGSV4Ij9ePM9OwInABrq18fnnv9lSrMymgmACDWQPDgW9QdYK3u/qKUR0clMYUkeAf8m
 +KpIQe+g6XQwWaffOhzqvMb+6b0d+knFd9Cu+T93D7M4fCxMVRT73NNizVlOjhYyaue1
 dbim9IXNOCFHQn2ESmao97XEJ35KpvwYDnNaITBDOlT3np9hj0f8FO3+r4UWZ71Jfx5P
 9ygw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696405252; x=1697010052;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5fUH5S4uz1EWWFstq5oEXMZSXkqH1sqcQ+Nf7tmZbwI=;
 b=U9YoPIrIzjnvqO5rGYIWlRvWQKf2zfFWP5wZvFV8RskfT2QQtpbUJ8vpO38Gel3EoG
 zEOUJqjPP02wZ5FBFbBneq/C4Mb4fdlJPB3Q/iFVK5BDCC70huZPfxIf3vy+uDqt9OGU
 6GFY1sb0X7uazWNFcAtDvrmarJ+x2wHhRgVJqzkgUztY6ioMcLZ3epqs3Z1SceOP+3uN
 5inApVzKvTf5VZipdRddX6vEeA6q+DNf541ac0dMeVYqpZtlXxx36QLNtFDg0G28I4q8
 7yvnueIWyUoG8gmqVS+c3Iz6Ii7fpb0jW7KwZO7rpiJ+nU2TTueWXOHfRZ0pldsYEKST
 8EkA==
X-Gm-Message-State: AOJu0Yze3hexCbHbU924fI01lOypWEblGORaVqLw6EM8jXJEbpHE+l5d
 sEO9dO/naAlAc7KjMqDCHsI=
X-Google-Smtp-Source: AGHT+IHZ6NRVZIFRqS3Cq1TdvSNu0HELw/5i7B3boICHTTeSqupmrGFgyK8BXOHgZtJ89wiytpIPNQ==
X-Received: by 2002:a17:90a:3f16:b0:279:1367:b9a3 with SMTP id
 l22-20020a17090a3f1600b002791367b9a3mr1447237pjc.4.1696405252410; 
 Wed, 04 Oct 2023 00:40:52 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.173])
 by smtp.gmail.com with ESMTPSA id
 20-20020a17090a199400b0026b12768e46sm894332pji.42.2023.10.04.00.40.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Oct 2023 00:40:51 -0700 (PDT)
To: dave.kleikamp@oracle.com,
	shaggy@kernel.org
Date: Wed,  4 Oct 2023 13:10:40 +0530
Message-Id: <20231004074040.12233-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently there is not check against the agno of the iag
 while
 allocating new inodes to avoid fragmentation problem. Added the check which
 is required. Reported-by:
 https://syzkaller.appspot.com/bug?extid=79d792676d8ac050949f
 Signed-off-by: Manas Ghandat --- V1 -> V2 : Added check for higher bound
 of agno fs/jfs/jfs_imap.c | 5 ++++- 1 file change [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qnwV7-0002xI-Tg
Subject: [Jfs-discussion] [PATCH v2] jfs: fix array-index-out-of-bounds in
 diAlloc
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: Linux-kernel-mentees@lists.linuxfoundation.org,
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 linux-kernel@vger.kernel.org,
 syzbot+79d792676d8ac050949f@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently there is not check against the agno of the iag while
allocating new inodes to avoid fragmentation problem. Added the check
which is required.

Reported-by: syzbot+79d792676d8ac050949f@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=79d792676d8ac050949f
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
---
V1 -> V2 : Added check for higher bound of agno
 fs/jfs/jfs_imap.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 799d3837e7c2..c0cf74e7392b 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -1319,7 +1319,7 @@ diInitInode(struct inode *ip, int iagno, int ino, int extno, struct iag * iagp)
 int diAlloc(struct inode *pip, bool dir, struct inode *ip)
 {
 	int rc, ino, iagno, addext, extno, bitno, sword;
-	int nwords, rem, i, agno;
+	int nwords, rem, i, agno, dn_numag;
 	u32 mask, inosmap, extsmap;
 	struct inode *ipimap;
 	struct metapage *mp;
@@ -1355,6 +1355,9 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
 
 	/* get the ag number of this iag */
 	agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
+	dn_numag = JFS_SBI(pip->i_sb)->bmap->db_numag;
+	if (agno < 0 || agno > dn_numag)
+		return -EIO;
 
 	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
 		/*
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
