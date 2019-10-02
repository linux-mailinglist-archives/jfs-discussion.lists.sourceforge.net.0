Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02276C8B20
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Oct 2019 16:25:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1iFfYr-0005ZK-Cq; Wed, 02 Oct 2019 14:25:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <aliasgar.surti500@gmail.com>) id 1iFY7R-0007CZ-QH
 for jfs-discussion@lists.sourceforge.net; Wed, 02 Oct 2019 06:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UTXkK8Aiou3Bx2wfU0phkG7Pj6CsD63/6JTcsJ4yzag=; b=OjTglxuVZ4vZamc/cFxZwy65B0
 dKLivTCvSOJYbMU/xi8HQ1vrgE9maeMGsa1uK7TVvoN54L9G4dxFL2KppDj1aOpuYYP1RZsdaeH2M
 UaJA/lJb1MmcNC6l0BZvleJrQoXBn28Ug4Ym/sJ0XQQz0vN/q555izRN6hflqArD9XD4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UTXkK8Aiou3Bx2wfU0phkG7Pj6CsD63/6JTcsJ4yzag=; b=g/BJw6yDRSkhnEnMrdc4mg7p4d
 +IBZA+hSV9sySAegehHUWCTJXgrNepUibCrgUZRCH9lO+mGi6iH8UpQ0SLgsK8YIlxEiOOkLPTxLZ
 Nf3rbxiIX5TVCJE4Eo8gLzoyLNd3v/rrOMDeU6FWGztCoHMikWiCFUDIiRP1sWuQMYIs=;
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iFY7P-00EA6F-Ov
 for jfs-discussion@lists.sourceforge.net; Wed, 02 Oct 2019 06:28:13 +0000
Received: by mail-pl1-f193.google.com with SMTP id f21so6666753plj.10
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 01 Oct 2019 23:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UTXkK8Aiou3Bx2wfU0phkG7Pj6CsD63/6JTcsJ4yzag=;
 b=traQMmwWiLfGh4tBjtddmH/yyBRveN3EAAjgf9hfLCEXjBonPBk/7Ff9lEQuxetE2c
 Ctkyfc8tKTelOPqWB1qSX6W9vdoFfQ4dHbSllYiVxisfgUY4j+3nQoYKT1s14pgJ39g4
 160XptFvnZiuijV71t4iYVoV5RhuTSj4S1jdpttsSbGgH0A6/Cx7zLo+8xNSGgxehHyN
 YLDhvZir1Y+N/ymVeqsFM23EM6aDjhZPMWdIE6L4Ay2JumBAgEGShS4/x87baTuki4k3
 p3Ze4+UmsqVCbB4qppXg5Wofz9R/hD9f3HAm8My18jsTdEWOE5ehNTl/15vM+S8YfuBv
 eBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UTXkK8Aiou3Bx2wfU0phkG7Pj6CsD63/6JTcsJ4yzag=;
 b=bhGXEmgLzafqjnNAoZateIYyZp2IgI3e3I3RueWJ93fih7AoBwdkZtdgFLptnUelOR
 Ppbk1G60X7dt1ae8h2mdpykJMGQQGsnmG5rDIdNb2/LAPymjRYU7nFojPtc0yliPzmTE
 NtrdDAFMPAEVXO9+BL0EPp6x5lDJuj+tNeZtWxbaTivw302xqIwlcr3rgwWGR9CuvycH
 zXkKNQfGjPfNJhRVC8jzpwVFtN372ugwb6msouPx/IXgaUxt5QhSgvv9qSJNY4qF3vVS
 zOR4le+vaD1wccPJsP7JVTZOwMt7fk8KzSim41wMs4ycOQVZhJ9YTa/VV5Wf2LtPhai4
 ZbSQ==
X-Gm-Message-State: APjAAAXxY2grr2ztZNOQ3pgXItLZvPYmX1iq6plFpXPghB4V32Ts3r7w
 0bNZKJ+cMm37CIYxXFWaL+w=
X-Google-Smtp-Source: APXvYqx0heRfYanN3qDtNVzXr4HdQnaLYlPHx7NeChT64/rL+NiDuC98KWs5Q+9ZuJViUtBExP5O2g==
X-Received: by 2002:a17:902:8d87:: with SMTP id
 v7mr1975796plo.126.1569997685888; 
 Tue, 01 Oct 2019 23:28:05 -0700 (PDT)
Received: from localhost.localdomain ([103.241.225.67])
 by smtp.gmail.com with ESMTPSA id z4sm4314778pjt.17.2019.10.01.23.28.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 23:28:05 -0700 (PDT)
From: aliasgar.surti500@gmail.com
To: shaggy@kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Wed,  2 Oct 2019 11:57:57 +0530
Message-Id: <20191002062757.18859-1-aliasgar.surti500@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (aliasgar.surti500[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (aliasgar.surti500[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iFY7P-00EA6F-Ov
X-Mailman-Approved-At: Wed, 02 Oct 2019 14:24:59 +0000
Subject: [Jfs-discussion] [PATCH] jfs: removed unused return variable from
 txLog()
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
Cc: Aliasgar Surti <aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Aliasgar Surti <aliasgar.surti500@gmail.com>

Return variable is used in txLog() without updating it.
Removed the return variable and returned the value
directly.

Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
---
 fs/jfs/jfs_txnmgr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index c8ce7f1bc594..26c7f6a46b07 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -1367,7 +1367,6 @@ int txCommit(tid_t tid,		/* transaction identifier */
  */
 static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
 {
-	int rc = 0;
 	struct inode *ip;
 	lid_t lid;
 	struct tlock *tlck;
@@ -1414,7 +1413,7 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
 		}
 	}
 
-	return rc;
+	return 0;
 }
 
 /*
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
