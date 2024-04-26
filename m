Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DD68B2EBD
	for <lists+jfs-discussion@lfdr.de>; Fri, 26 Apr 2024 04:34:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s0BQ8-0000j7-Cq;
	Fri, 26 Apr 2024 02:34:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1s0BQ7-0000is-Bq
 for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Apr 2024 02:34:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LMvRw8rpnZSVTHGGTWg1guTXdjfOyoODdnuOBPpc0sI=; b=VpwVhLYKFpB+sk1h5FVU0y/5sX
 xe2UEbnwvsflMRuNIWDGe4guYTtbYJBulP6AXsQlIt9rwWkDyvEipkPsC1mDer1soZ6s6X/PZUYQV
 gjUteOHqVuDwgx8VgikG4XHTIV5QitgFWGg1O5VEMMsLYubPSe55MGOS1eV9JaTCX4ZY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LMvRw8rpnZSVTHGGTWg1guTXdjfOyoODdnuOBPpc0sI=; b=ZO4tfbQuKBxdXIXVjszARvnBDO
 To/5LrQj71AzsRTkATieBK2xd9Ui6POtVnwD6/62jUTjDultLW89OR9PD2i5F+AnxWXcWyKytmvEq
 dMJCqAldJzUERKVkQbO0wBsfcnpHMv5CNuBi+zaMDaiRCQDx7E1UeecOAzAJy97KQyb8=;
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s0BQ7-0001gj-1c for jfs-discussion@lists.sourceforge.net;
 Fri, 26 Apr 2024 02:34:40 +0000
Received: by mail-pg1-f173.google.com with SMTP id
 41be03b00d2f7-5bdbe2de25fso1250979a12.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Apr 2024 19:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714098862; x=1714703662; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LMvRw8rpnZSVTHGGTWg1guTXdjfOyoODdnuOBPpc0sI=;
 b=b2lzHRxYLpsoNIizHIIg/9vUwCRm7P+KXWzFaMHJfdoNV8EQyklKY0msQWFfgeJDLf
 GBmGmGkN+rq6oFweqjUPLaxyATs5m4Xi8Hrq0DNJAYzXTblCX3yj3ROCjgrfopNtrEMF
 OKOjqxa6Ul7VKdqwcIzZc7XSaq8AGjpp/g0ndxsv91wtCYQ80WNNQg2zwS3D83+PA5cw
 N/3uIdxzyMhJbJmu+vAClAo5XUNzHse3+rfAFtomxTrHft6GwV8hsdgbzKDChXcgd8Eb
 uW5YuQjWKZFPXjZpXoPFA6E++Qp/2r5xvuWcs+z13uD/D+quJLeL5Sz386gZok+tj1+e
 omnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714098862; x=1714703662;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LMvRw8rpnZSVTHGGTWg1guTXdjfOyoODdnuOBPpc0sI=;
 b=EtfjYUSJ5kxvx3zTaUMHRFN4hTJE7dySnLBxKiLtmKUAl5DAeRZWNdK25ZfcXgOiZE
 aJAhrydcPnFSKoeeXmwQqAqjqlnG0RPhpL/mq0eSDHzdplHDxZdXDW0Lro3O2ZiuR7e9
 a7F8cPhLq8UPbreGG2i+1RBTnNnpzCl/GFztGGp7fNcupzDosPRZRHMbiX3lqZOQIYgX
 ++5L3PrmHI0MTmeryu+tJOTkH1fyYMr2NvlkcJIc4LptMenv6gjTlM5Jw7DJ0tvPEhtu
 qwU2zWPi9dNlNIV3a1cTXasAK67IMdBVbCoUQHwWpGtrhiYBH4U6TITfISrflByTtG46
 fwsA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV44XBQ3MAUDfSH+lmyGhQL3behHB9qG6LEQELPvpY2CG/nT+D9O5RU4qnyqCb5kRuR+XXBQHf++vIHvejka/8OOO2ipq1XVAY7PmOdZKyUKCd9YJs=
X-Gm-Message-State: AOJu0YzhlxfNkB3+9bbZey8HVOeLAAw5gGpuBWRQrM5hcWCYxrEM+HKq
 zf8tUKFmn1ju8xIoz/14SaSWQJcD8sbaoYLuCSRQJKVbpur8U8fD
X-Google-Smtp-Source: AGHT+IGqis1dPYz/mMAiaZa+AZkFNkopgQvO8kWxUn+sBXnlx2RuRBtlkOEJyGLW61VNQZueAGxzug==
X-Received: by 2002:a05:6a20:2588:b0:1a7:ad53:d3a3 with SMTP id
 k8-20020a056a20258800b001a7ad53d3a3mr1865481pzd.35.1714098861903; 
 Thu, 25 Apr 2024 19:34:21 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 a4-20020a170902ecc400b001eac9aa55edsm1801386plh.250.2024.04.25.19.34.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Apr 2024 19:34:21 -0700 (PDT)
To: willy@infradead.org
Date: Fri, 26 Apr 2024 11:34:12 +0900
Message-Id: <20240426023412.52281-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZiqNMLWFIvf43Mr-@casper.infradead.org>
References: <ZiqNMLWFIvf43Mr-@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I forgot to add Dave to the cc, so I'm sending it again. Send
 final patch. With the patch that modified the location of release_metapage(), 
 out-of-bounds vulnerabilities can now be sufficiently prevented. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.215.173 listed in list.dnswl.org]
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
 [209.85.215.173 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1s0BQ7-0001gj-1c
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

I forgot to add Dave to the cc, so I'm sending it again.

Send final patch. With the patch that modified the location of
release_metapage(), out-of-bounds vulnerabilities can now be
sufficiently prevented.

Thanks.

Reported-by: syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
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
