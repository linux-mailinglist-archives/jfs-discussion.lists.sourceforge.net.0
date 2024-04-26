Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CB18B2F31
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Apr 2024 05:42:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s0CTY-0003Wn-C3;
	Fri, 26 Apr 2024 03:42:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1s0CTW-0003Wd-C5
 for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Apr 2024 03:42:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vcbSCZ9Y2wGlgtCSSOeITnOlatGFVgCpJ0czBbahZfA=; b=NHfEUP/CIYDMU8Uaq5DWjjRlJK
 a/QRTHO0Mlp/lQlq5wMoPtJoMDXXD6is+v1+sOkjjgjFcAnHiDD7W0Ujqp5LS8b7PKwV9cOhJh3UQ
 B6+5U0UQzZWo66VXOotPbE8UfojbSR5z+NKjNbf+87aXM6/guJBxfHFIr9nLJT4kvLhE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vcbSCZ9Y2wGlgtCSSOeITnOlatGFVgCpJ0czBbahZfA=; b=KiS7SeofyeC8+Lqukp4YlhF55r
 IeGKjhiYwsEARRBv6XpYMWmBedOPWG7kVMON9G9j7Ua58p8YBMnH5xe4WO0/GgyNyMEuWHRbMWocA
 sBJXCAeSd+vjzJ8teUL4hdVC4gxO/u4YEQiBNIDxI5O1BDjwS1h9La7v5qVF5DBLrhls=;
Received: from mail-pg1-f175.google.com ([209.85.215.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s0CTV-0007gB-Ik for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Apr 2024 03:42:14 +0000
Received: by mail-pg1-f175.google.com with SMTP id
 41be03b00d2f7-5c6bd3100fcso1140033a12.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Apr 2024 20:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714102923; x=1714707723; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vcbSCZ9Y2wGlgtCSSOeITnOlatGFVgCpJ0czBbahZfA=;
 b=GTOYQbnr6b+jwi6JZ19BwCwUbrPueNkSShccyUq0BIHyxhqdRx1CXVltHZYxxxsu9H
 jXPENoRW/Afih2TQn7EWwClbg5wQP12gSbp/MkNQibIFzRIY39iml8xmeHMNQnAijeiJ
 lDmKzjAL82xTqh+nWi+rxr5X7y3MnLd33Q/vAIKD8lVurZS0H8FURAxDL5Tq/Gs6qYR0
 LjHmrxPcBxomqsav/wGWvqgjzsUieVHZ+xg8i74JYFFhAbZflmNpsJoeG+hlli1jiDT2
 JNFFJtsjt+laYSoAZQetbLeIUmIcZ8VGcEfFG+poOv3j9pLjAvbXBXiO9YOlbgsIsa0q
 K88Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714102923; x=1714707723;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vcbSCZ9Y2wGlgtCSSOeITnOlatGFVgCpJ0czBbahZfA=;
 b=F7Kehf6uYVTAydBAw4vlVK7hKHB3/7TN9kusOdg9mTrlXhys/UuBP8aIwWlRQ/fzrU
 DE8twlaRk/JRdPOvx4vWWhUBXGGRHQGpkrpZ6dVDAPeiX6hwiJLIS9mUIFUxhJjzzeFu
 XU8oqUxshxv7byGEtJj1rD7O3EMEzJ3zpAT54b/pupgT/9yLQHPEJD1C9XDd5BeDv7lC
 +M+a3qqFMOVyKwKFJ1wg7u29/Jjj/JXf5RbYt9h3g6bAcy5ZKQ0q8fA/WK7TZ/jPlRYh
 kzC+vWYumAC1nASWOB2NdyV97uC90XQk+mPZsp6neOCMDKXdbESRwyAa805z2HMwmXGT
 rKaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUu0dLHaKnVQEMaON5VUrW6tw/zde3R8gnVP185JPy9wkuB96dsekQGVYtVP/LySeejGmQEjs9qhlhuR8PlDxLJqTdZ2EGXQt3x6qgCxMwHNKMbVXQ=
X-Gm-Message-State: AOJu0Yxe+Qc6tUBKGVzUqNvrMOllHuM/h7oj4P5DD1kka2TbdfS3AZAn
 4MmNY6w2GQfLEO0aCNoolEGyF1Oe5eWHzvOuV9Ybl9udBBN19CRY
X-Google-Smtp-Source: AGHT+IFKVoAcUnC/X1pW0IQ7BDM1mK7tLEYiPCxRztwnL1ODKEXICZa989yrQlNKJNIJTWxMmDDLGA==
X-Received: by 2002:a05:6a21:271c:b0:1a3:63fa:f760 with SMTP id
 rm28-20020a056a21271c00b001a363faf760mr1754152pzb.14.1714102923229; 
 Thu, 25 Apr 2024 20:42:03 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 p25-20020aa78619000000b006e647716b6esm14409826pfn.149.2024.04.25.20.42.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Apr 2024 20:42:02 -0700 (PDT)
To: willy@infradead.org
Date: Fri, 26 Apr 2024 12:41:56 +0900
Message-Id: <20240426034156.52928-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZisfLI3Va6D5PjT6@casper.infradead.org>
References: <ZisfLI3Va6D5PjT6@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Matthew Wilcox wrote: > This is not a good commit message.
 > > + if(agno >= MAXAG || agno < 0) > > Please follow normal kernel whitespace
 rules -- one space between 'if' > and the open paren. Has confirmed. This
 is a patch that re-edited the relevant part to comply with the rules. 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aha310510[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aha310510[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.175 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.215.175 listed in list.dnswl.org]
X-Headers-End: 1s0CTV-0007gB-Ik
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
From: Jeongjun Park via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jeongjun Park <aha310510@gmail.com>
Cc: shaggy@kernel.org, brauner@kernel.org, syzkaller-bugs@googlegroups.com,
 Jeongjun Park <aha310510@gmail.com>, jlayton@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Matthew Wilcox wrote:
> This is not a good commit message.

> > +	if(agno >= MAXAG || agno < 0)
>
> Please follow normal kernel whitespace rules -- one space between 'if'
> and the open paren.

Has confirmed. This is a patch that re-edited the relevant part to
comply with the rules.

Thanks.

Reported-by: syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Jeongjun Park <aha310510@gmail.com>
---
 fs/jfs/jfs_imap.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 2ec35889ad24..1407feccbc2d 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -290,7 +290,7 @@ int diSync(struct inode *ipimap)
 int diRead(struct inode *ip)
 {
 	struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
-	int iagno, ino, extno, rc;
+	int iagno, ino, extno, rc, agno;
 	struct inode *ipimap;
 	struct dinode *dp;
 	struct iag *iagp;
@@ -339,8 +339,11 @@ int diRead(struct inode *ip)
 
 	/* get the ag for the iag */
 	agstart = le64_to_cpu(iagp->agstart);
+	agno = BLKTOAG(agstart, JFS_SBI(ip->i_sb));
 
 	release_metapage(mp);
+	if (agno >= MAXAG || agno < 0)
+		return -EIO;
 
 	rel_inode = (ino & (INOSPERPAGE - 1));
 	pageno = blkno >> sbi->l2nbperpage;
-- 
2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
