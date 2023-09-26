Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2015E7AE67B
	for <lists+jfs-discussion@lfdr.de>; Tue, 26 Sep 2023 09:13:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ql2GD-0008JZ-8y;
	Tue, 26 Sep 2023 07:13:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1ql2GC-0008JT-F0
 for jfs-discussion@lists.sourceforge.net;
 Tue, 26 Sep 2023 07:13:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=87h+GCoyZ7JZR2wvMjstdo1iWnzZgP8yLm+iAVVZmYo=; b=U6oRETLwT+LOaU+di0qZFQrwHm
 VuV7YRx0VkrLwwJB96ayzp31xAEXe7PfpizHPwjyJQv3D1w4qamAlykBxvmzXVcsXsIhFbZ0CQgay
 GT29quLyTtJLaSL8WtLZiMDfcEPEIz9X6VExn4B3MhLYJLkdktotLC34LnELxMxQoQ40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=87h+GCoyZ7JZR2wvMjstdo1iWnzZgP8yLm+iAVVZmYo=; b=M
 bD8RgHgMr45Xhrygpg1vUg0i3lO02I+rUC/VABrVn+o/nzwsy9QGrRe6ft4PteDInwBQRbV9mOHQk
 LSFpfcDcswumOAI4YSzwdwIW24h5ltx+e+Q5tWNdAxfzqKxLuBsEVtGKXhmEyHKLRPQ6t16AmMTq6
 EGKcaIJ5kJ219lks=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ql2G7-0000fB-Lg for jfs-discussion@lists.sourceforge.net;
 Tue, 26 Sep 2023 07:13:31 +0000
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-690bd8f89baso6126602b3a.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 26 Sep 2023 00:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695712402; x=1696317202; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=87h+GCoyZ7JZR2wvMjstdo1iWnzZgP8yLm+iAVVZmYo=;
 b=d5FpMmcOXmYd8yy1eBe0ScGtXijxPr8yW7jeho+4W/yPNqEeHgygxPp6eUe3/D733M
 C912mwXJoWGqltKx6AcOaHXmx0g/cOSPFOzxSzIvlDNEZCich6AbdXQp6fYInSCFneht
 jyDgBrnujF3ABgLcXZdBVRQeGbyMwH/6DJd5lZhiSlnmSGFHDspUBHvbeSr3WT+G8r3s
 kowzfVVI6AUsYIjbXMG3pAukpsAH0kcQyBiCeFMyrLPPKxT0znXrVpcdXZmgJR7kXjUI
 Wfar0WBF7e+GIflofYwQ9dX6kgsxkzbbDuBo/R3tKVQ7xyHe5BwqzPb/fa4kAdYAvr5D
 cmSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695712402; x=1696317202;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=87h+GCoyZ7JZR2wvMjstdo1iWnzZgP8yLm+iAVVZmYo=;
 b=lWBI0XjTdp6J/iO0N8zBVrnkmuJ5bScOC6EufxFMGGVyCpiCEIWVzDEOYctMnxlKKm
 KKKeHXUlnRKHDw0hzr3/aDfQ6kisKVE1ruzMZahUCsdAfwHtvRJlfJq/rDevQnkLmeNW
 QWp0IhuQj3ZV11pIeU589f7oaIDX8tp3gHQ8n3CdB7OCxhW+kWQwm3lT/g32LbIwFRQA
 AZTYhbJH8cbFGLgn2NnOVDqrwdQHIFPl5WaFbveMhoemn4zVOvA9dHX+Op6jsTZ9Xyoo
 i238Mrv5TI8C2Dg/MCJyMIAA7z2QYTTQ3h3q9WuxQj1KZRP1m1xudDjg2+IiUATEpTyH
 G1mw==
X-Gm-Message-State: AOJu0Ywu+bynGoEMVtcEAdqjd3WUiBrYNI9RuCM02zTs1yVnXpFMy2Pg
 lqYHXqiXbOFs3bcV0ELQyPhEZznzzoMD1A==
X-Google-Smtp-Source: AGHT+IFhvxFIiuQd2QO1RrEAsFmMm/JK3ySEofVvDMnYzpK0MvEckVCTgtX6J87sbWMTaneW/v/2sg==
X-Received: by 2002:a05:6a00:24cf:b0:68f:e810:e86f with SMTP id
 d15-20020a056a0024cf00b0068fe810e86fmr7799333pfv.28.1695712402114; 
 Tue, 26 Sep 2023 00:13:22 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.178])
 by smtp.gmail.com with ESMTPSA id
 t12-20020aa7938c000000b00686236718d8sm9177662pfe.41.2023.09.26.00.13.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Sep 2023 00:13:21 -0700 (PDT)
To: shaggy@kernel.org
Date: Tue, 26 Sep 2023 12:43:12 +0530
Message-Id: <20230926071312.14086-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently there is not check against the agno of the iag
 while
 allocating new inodes to avoid fragmentation problem. Added the check which
 is required. Signed-off-by: Manas Ghandat --- fs/jfs/jfs_imap.c | 2 ++ 1
 file changed, 2 insertions(+) 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.178 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.171 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1ql2G7-0000fB-Lg
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently there is not check against the agno of the iag while
allocating new inodes to avoid fragmentation problem. Added the check
which is required.

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
---
 fs/jfs/jfs_imap.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 799d3837e7c2..ace8a1506380 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -1355,6 +1355,8 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
 
 	/* get the ag number of this iag */
 	agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
+	if (agno < 0)
+		return -EIO;
 
 	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
 		/*
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
