Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B538B2433
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 16:38:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s00Ej-0002eg-8e;
	Thu, 25 Apr 2024 14:38:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1s00Ei-0002ea-8k
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:38:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i7nLnIenSPwfvHd9kS+H3ppvNb141ZWllN+yQVfG3SM=; b=U0YjJwlWfErAPFBLY4siZAul91
 AMWTm1KRrrpNSefb0HFTlohwoTD19smK9j0qg/sMAsiNwmx7Zl7405aANjZdHPisgqVe416IVZy1h
 1955TgTEwkqbCaI1N1YkYCNrDGbL80JD3EZkESsHDuIEP/SUBArYwx2SEsLaV58uTF5Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i7nLnIenSPwfvHd9kS+H3ppvNb141ZWllN+yQVfG3SM=; b=fGDdoDR2W2rt7EdGlGnUt2hW9p
 3Gkn+x+1W7QFj5YICnV9iUWRi+xeMcJnKTn4LQzuLcjgQh8nj+In/66hQCkUExM0DWH0zBEVuQPiT
 tzBZw1FqWT2hGuldWk8uTBwrOpI1Z16tPbXbxR/YH2ERDvfRxrs22rijkvt6pm5uuQ+I=;
Received: from mail-pf1-f178.google.com ([209.85.210.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s00Eh-0005IF-B1 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:38:08 +0000
Received: by mail-pf1-f178.google.com with SMTP id
 d2e1a72fcca58-6ed112c64beso1044636b3a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Apr 2024 07:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714055882; x=1714660682; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i7nLnIenSPwfvHd9kS+H3ppvNb141ZWllN+yQVfG3SM=;
 b=aMJhlaIWvMIkjLMMn0a3fbhoLQEo5Oa8BGu02HfhZqQHwRh32qPp1G+zJ6UfGnBUXJ
 xkfx6vMLwfPKP/DaHO34mblO+sTBZHamt1ETF8MU+x6DOkIkPWvhzhZd9WUjgjUWHtr4
 uffPgWH/UNrwk6pY1WyHC6K2jpTSuxh6DeVDv/hs4Ycc0QDeLOLUzxJh79QCaEticx1L
 taC5ppsYIHT05DreO2MJ7vTtIiYVkwo1TB3D6wlwxn0VwiszUw0H4P371HqBFpktJAzp
 lwgtUYPN0kHoLdUEMyIw64wPjJR5RlRLbrvX+3J7nQuCELK57q6fF1JRoapp9NhDDkMU
 Y6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714055882; x=1714660682;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=i7nLnIenSPwfvHd9kS+H3ppvNb141ZWllN+yQVfG3SM=;
 b=FiFXCQq2FP1dAu5BJ221AnmBCN+ZrSrv9dXON6GAvvur/4r7JNJs8ZQg4yCZqgRdMJ
 mV2b7OTMUHUVOZ1xqUZOPa9JWAzZMtbka/ppdNniGS4OWH8UjvinrSJ5rn9q1o3+H249
 AmA91n2qTxFsmUZbRy381AGZjB5k2d20rnd20ghLN0V4oH6bwvRoNb74MmKd3/cxLxAm
 GC66ElbNj+oQegK21lVQwx2kIfX0LfgPwrXsODiGpKvCMv6uCcCYRn8FuYXX2vWydWDg
 J5w1YA/IwJbis9ftAWKT3Zt1BTn8U6Wk5U3o5WN4L/29UDeoxsAWDzIqQUoLnjIRGE/z
 yXkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUw//iIT19PQVr1eHlXoqjHSkRE9N7hAwGF1q06ABncy3/YRDfMhPlX9ZKMqUWuTJJzJYierJnrc9HEnohJDqVfdYm+7nKpNBHYMkBMxXrAtB0NtKk=
X-Gm-Message-State: AOJu0YwpmK8qRK6mlA4MbIKCRK35GpBONBm6sEUKXMIWl30CFXwqqtKJ
 e+eEMGAsi9Z/X9Qs+iSkRk2M/jzNHnAcWNDtCRugP/jRAkt+npXx
X-Google-Smtp-Source: AGHT+IFJrsgHVd9BpJsfGb1HU8aF98DYgHF1MpanbypdG+1PkijnDJtVKcN2smBsOqec05MtXeVqeA==
X-Received: by 2002:a05:6a00:114b:b0:6ed:de70:5ef8 with SMTP id
 b11-20020a056a00114b00b006edde705ef8mr7415458pfm.6.1714055882075; 
 Thu, 25 Apr 2024 07:38:02 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 go20-20020a056a003b1400b006e6233563cesm13188023pfb.218.2024.04.25.07.37.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Apr 2024 07:38:01 -0700 (PDT)
To: willy@infradead.org
Date: Thu, 25 Apr 2024 23:37:55 +0900
Message-Id: <20240425143755.47655-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <Zipl4PQ9Q7sBlMCt@casper.infradead.org>
References: <Zipl4PQ9Q7sBlMCt@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Matthew Wilcox wrote: > It should be checked earlier than
 this. There's this code in > dbMount(). Why isn't this catching it? Send final
 patch. With the patch that modified the location of release_metapage(),
 out-of-bounds
 vulnerabilities can now be sufficiently prevented. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.210.178 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aha310510[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aha310510[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1s00Eh-0005IF-B1
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
> It should be checked earlier than this.  There's this code in
> dbMount().  Why isn't this catching it?

Send final patch. With the patch that modified the location of 
release_metapage(), out-of-bounds vulnerabilities can now be 
sufficiently prevented.

Reported-by: syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Signed-off-by: Jeongjun Park <aha310510@gmail.com>
---
 fs/jfs/jfs_imap.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 2ec35889ad24..cad1798dc892 100644
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
+	if(agno >= MAXAG || agno < 0)
+		return -EIO;
 
 	rel_inode = (ino & (INOSPERPAGE - 1));
 	pageno = blkno >> sbi->l2nbperpage;
-- 
2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
