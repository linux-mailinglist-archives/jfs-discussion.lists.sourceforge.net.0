Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 531B698B419
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Oct 2024 08:06:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1svW1U-0005Xp-Kv;
	Tue, 01 Oct 2024 06:06:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghanshyam1898@gmail.com>) id 1svW1T-0005Xd-HB
 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Oct 2024 06:06:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S3JnPQ592saNCClwG2EAIaq+vjHVmf3dkbYasmw5RK0=; b=O5/v0wgap3XSYoO051hmXMrrHq
 3UUBAQsypWJQrwtnuqQiQnYS90o/JJ5WiOCkcMFL6HD8MSfHFLzOLvxaMSUI1hZVsTniU6wSt2wzN
 Ff2brwQ4CieR5JQfNwrlNvB02ambOg5vdP5yAvrrk1qEe5OrPfyUOIGT5x+kVnU13UUo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=S3JnPQ592saNCClwG2EAIaq+vjHVmf3dkbYasmw5RK0=; b=S
 QyQ6ufqKNuNkkLkeYrbwIekY8618sX/jf7Ke0dBBcGf0TRBpy+CX7Nk0ptAce5xk4mYCTfbrII/Xm
 EZXe7HG7VpAZMZdBW5EWmyB66IfBw9mWEGbTzIVFqH4O5ibB9hKspEtjJrYbyOaaG77YV2LloPqTQ
 Brrr4Jo523i6Tb3o=;
Received: from mail-pg1-f181.google.com ([209.85.215.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1svW1S-0008Hb-Od for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Oct 2024 06:06:11 +0000
Received: by mail-pg1-f181.google.com with SMTP id
 41be03b00d2f7-7e6cbf6cd1dso3478082a12.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 30 Sep 2024 23:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727762765; x=1728367565; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=S3JnPQ592saNCClwG2EAIaq+vjHVmf3dkbYasmw5RK0=;
 b=Ngfhm1Pk+RFwGkrjzH2qknci4uNdTiWb2EKbTYpwV7d8zfR5ZUcq+B+/QnwsPodYcB
 vRlXzPMXgX6yNhYh4OcQKY7J2Z+fkIiM7oZUj+dwPxQJdXUdCHOVpDrd74fVJj9ZtXjK
 U16phP4tIeyhYUwadoe4Dz40zLAiSM5kYtXPXKjNYxRC2k8QZuPrKVQEPL8IWBL0MIZA
 pdRJ6OcaKiZTQbaYrznqbiehTpfEgUeJdH58J94AigOiA8pMf82W50n7nt1uGkQnDQCJ
 SkrzQ55Dmnv/V4z1VcmoyIYYiludLQPjkaWMUNi8olilGmn5PAln9xnPLGQsSspV6gJ/
 FCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727762765; x=1728367565;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=S3JnPQ592saNCClwG2EAIaq+vjHVmf3dkbYasmw5RK0=;
 b=c7RdonnLNb46Q+ajDqIUoiV6ZYSgFTHLqNdFEAf8lgWrtooe6Z0q2d/O6aS5YUTNGw
 BguLiuzMu/7MzqwCx5wNF1UYUTmH7gai4HgUzd5vkLewcV3pZaZk5NgWz3eKJK9LcU15
 xqm+x5jEFsZBIm0kxhHYIn8tVZLEZZujxq9apYBA6b6i9q7xDbcvU0VqRQTZtegqL389
 BkZsoMUMPYmnLvPAoCV/aYop0HVfgXYLO/KrcjHuIupePcrTBrgPlxCaLKCncjNXb27B
 FORt3WNkYc0SqdozkdhCAAAyGoX23KZTgjcoXfi3hblD76Bqy0r0g50OAJ++NGAcZmm/
 a1Yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWLuGa25xEGy49/Xt/ypfJN7PRoz+0PG7EUj6KQniQN73Y4OIskI92IyQvy0ldFQVEl73KRI85QTz4DllzqfA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YysIjpT8GGfk5kiODKg3em1sWKpBn84J+4YPtYhHqfigT+QNAoJ
 vzMC5qCUNhcfsLBmbE2NkqGf8uYwEb7jx2snXMGfm6Im27PEZyJs
X-Google-Smtp-Source: AGHT+IFzh2uSZT0RhPv2Tnh/OMQvJbm6z27RebTeTUBWaAplciMMLoSvwWnHda+XCtUlhuYcyU1eow==
X-Received: by 2002:a05:6a21:164a:b0:1d3:d40:2060 with SMTP id
 adf61e73a8af0-1d4fa64d7ebmr20122127637.5.1727762765014; 
 Mon, 30 Sep 2024 23:06:05 -0700 (PDT)
Received: from dell-xps.. ([2405:201:3036:a902:b102:83da:252:ac85])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20b37e421f0sm62963435ad.212.2024.09.30.23.06.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2024 23:06:04 -0700 (PDT)
To: shaggy@kernel.org, eadavis@qq.com, osmtendev@gmail.com,
 ghandatmanas@gmail.com
Date: Tue,  1 Oct 2024 11:35:47 +0530
Message-Id: <20241001060548.3090738-1-ghanshyam1898@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The stbl might contain some invalid values. Added a check
 to return error code in that case. Reported-by:
 https://syzkaller.appspot.com/bug?extid=0315f8fe99120601ba88
 Signed-off-by: Ghanshyam Agrawal --- fs/jfs/jfs_dtree.c | 8 ++++++++ 1 file
 changed, 8 insertions(+) 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ghanshyam1898[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghanshyam1898[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.181 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.181 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1svW1S-0008Hb-Od
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 jfs_readdir
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
From: Ghanshyam Agrawal via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>, linux-kernel@vger.kernel.org,
 syzbot+0315f8fe99120601ba88@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The stbl might contain some invalid values. Added a check to
return error code in that case.

Reported-by: syzbot+0315f8fe99120601ba88@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=0315f8fe99120601ba88
Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
---
 fs/jfs/jfs_dtree.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 5d3127ca68a4..c8f6e51ac047 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2891,6 +2891,14 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
 		stbl = DT_GETSTBL(p);
 
 		for (i = index; i < p->header.nextindex; i++) {
+			if (stbl[i] < 0 || stbl[i] > 127) {
+				DT_PUTPAGE(mp);
+				free_page(dirent_buf);
+				jfs_err("JFS: Invalid stbl[%d] = %d for inode %ld, block = %lld",
+				i, stbl[i], (long)ip->i_ino, (long long)bn);
+				return -EIO;
+			}
+
 			d = (struct ldtentry *) & p->slot[stbl[i]];
 
 			if (((long) jfs_dirent + d->namlen + 1) >
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
