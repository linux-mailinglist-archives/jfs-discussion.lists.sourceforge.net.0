Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5624F97E3DD
	for <lists+jfs-discussion@lfdr.de>; Mon, 23 Sep 2024 00:00:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ssUcT-0005yC-OB;
	Sun, 22 Sep 2024 21:59:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghanshyam1898@gmail.com>) id 1ssKKT-0007hx-1U
 for jfs-discussion@lists.sourceforge.net;
 Sun, 22 Sep 2024 11:00:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AoPgHByHk8gdB8thDbB1F+WogZQcXSZNhRbe+cOH4n4=; b=BwRtJzPrkIuQu/cxwVj+4W2hYO
 IV01SomgF+7+uzoUX/oORJ+GEwobjVg6nxYNgshwmZb1ByDINKs7mMxg0hu7zgIUj4PZhqS88uz7D
 0h+eo78SmNTGjYoS+X6b9ImfY/CrR2zru1WzDSoRPTplV0B2uBvpIxwJjVOl57WSZ0xo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AoPgHByHk8gdB8thDbB1F+WogZQcXSZNhRbe+cOH4n4=; b=J
 6RsJcOCrEvjLlKJ6/zPVG/63qPy2KPw2BXE74FsUkTe8ExbIc8ZvGF3BrEttHCN4/aHhMVc7+TF7l
 rYEoIM2inNq7KHusLpIXfJmOo5OKihHx0pGknNjHLV53ZTcJ6Cmuq0or9XvpD97v/jYDvlxUmRYSX
 c1UP2ckGw5aB56XY=;
Received: from mail-pf1-f174.google.com ([209.85.210.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ssKKS-0003yM-E8 for jfs-discussion@lists.sourceforge.net;
 Sun, 22 Sep 2024 11:00:36 +0000
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-7198de684a7so2642312b3a.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 22 Sep 2024 04:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727002826; x=1727607626; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=AoPgHByHk8gdB8thDbB1F+WogZQcXSZNhRbe+cOH4n4=;
 b=bnsNlgE6Ig+cuvj+bByFGdK6kW+m3nINxqbzDTSX3FMSvU5KxEPMLx7BMO9IMhOEHA
 F6GWX2lGr7yqAo8n22z7DBgIf6y38r76AfQNflqLHivM0gDSRRgRvCATlKlVOBANTLFv
 t4GjL9RX7PiHH4Iwza8MVhnBwYQDGoY7WuNJPDqu2Y4ccgExtTW6/SjVB3kamhsp9CKk
 L4aMlsW/qLASI/y6EM5UqnmSmZHwNjC8Hn/oBlrYt+o6ERAoVPCwNl4SKaOEaxWcsZun
 h4eJop8Ge6pLz84a1Ohy6C5i2wIs+trXcY6TUQnrFNAajPX1KFcDzK+ZpS5dqmPme4UG
 NtrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727002826; x=1727607626;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AoPgHByHk8gdB8thDbB1F+WogZQcXSZNhRbe+cOH4n4=;
 b=LjBfrBSzuQd2wSDkkJvefqIuLCpUfP13KN/Ip9avT2kbeK4Ie6ACz0QY4i/iEzW4ev
 nyUVvSMOecavGBxmRhlA306r+eXVZ7lS7j/lEw8oA2mYL8Q1zSi7Hd+95cpTr9mzzdYM
 cNsDeMXQiszh5JtIBBx8erUlkSc9urQkwfcFlNoekzaE/rOqTGMNySeZgHwvDS54SV5o
 2JO8s0e2saGhwgkktrhoOIE/aIsSTmgI0M9r/x5nXMlXH/a+Eu+AhpDW9LetqCceuvIl
 NlUr5+WOUc1TzZUaAzfW748tuKkrWKcchNAMpEKOzMPCzZ/Avuhvu1HBNJoBHAXIwZ0S
 PW3g==
X-Gm-Message-State: AOJu0YyyDDF+zBSD2aemXBktDxQM/i9kLt8vqBbdDsrX2JtjYGM0T1Xx
 0V6wG6BLWnXYRmTEOSoL2UPVPGRQCnAj6UzumW5BQnDtuxF06tIk
X-Google-Smtp-Source: AGHT+IGossLNZkMQxzfHLzMnk8m3WoRtwKO4TXSuFpWFMgk40orALSczh3+WOkZ/jlnhXDAoQ7tDUQ==
X-Received: by 2002:a05:6a00:3d06:b0:70e:a42e:3417 with SMTP id
 d2e1a72fcca58-7199cd8e815mr11598352b3a.10.1727002824206; 
 Sun, 22 Sep 2024 04:00:24 -0700 (PDT)
Received: from dell-xps.. ([2405:201:3036:a902:be73:aa56:3bd2:d713])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-71944a9cab5sm12342033b3a.5.2024.09.22.04.00.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2024 04:00:23 -0700 (PDT)
To: shaggy@kernel.org, ghandatmanas@gmail.com, jlayton@kernel.org,
 eadavis@qq.com, brauner@kernel.org, ghanshyam1898@gmail.com
Date: Sun, 22 Sep 2024 16:30:00 +0530
Message-Id: <20240922110000.128650-1-ghanshyam1898@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In some cases, dn_numag may be greater than MAXAG which may
 result in an array-index-out-of-bounds in dbNextAG. Added a check to return
 an error code before we crash. Reported-by:
 https://syzkaller.appspot.com/bug?extid=808f3f84407f08a93022
 Signed-off-by: Ghanshyam Agrawal --- fs/jfs/jfs_imap.c | 3 +++ 1 file changed, 
 3 insertions(+) 
 Content analysis details:   (0.0 points, 6.0 required)
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.174 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.174 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ssKKS-0003yM-E8
X-Mailman-Approved-At: Sun, 22 Sep 2024 21:59:52 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds
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
Cc: syzbot+808f3f84407f08a93022@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In some cases, dn_numag may be greater than MAXAG which may
result in an array-index-out-of-bounds in dbNextAG. Added
a check to return an error code before we crash.

Reported-by: syzbot+808f3f84407f08a93022@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=808f3f84407f08a93022
Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
---
 fs/jfs/jfs_imap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 2ec35889ad24..5088da13e8f1 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -1360,6 +1360,9 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
 	if (agno < 0 || agno > dn_numag)
 		return -EIO;
 
+	if (unlikely(dn_numag > MAXAG))
+		return -EIO;
+
 	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
 		/*
 		 * There is an open file actively growing.  We want to
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
