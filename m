Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EA2C97DDE
	for <lists+jfs-discussion@lfdr.de>; Mon, 01 Dec 2025 15:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5l6zK0+8iBukNN0FbifR3Idj2TKWES2DkcTMnEoWQ0o=; b=hEeFYi1CIhZUp+rZoeS1HIdL39
	o4cqVhKg5WA96DvEaoeG3Lx9PALI6q8O8EC5gsNCu7sa340uy+teszpqVFgVsmzN0v5l5xy9WfVTj
	aPLHAlm+Ks7IlLpk927FBORqgnJ2nsL0+VYuNWo0wnsQD57SRu22MVpGyg4Tw9lCoJDw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQ52F-0000Mu-Tp;
	Mon, 01 Dec 2025 14:37:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vulab@iscas.ac.cn>) id 1vQ2Eo-0002bQ-JE
 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 11:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fn6mkdd2uwfI5DDn7Iu6PCrGjXytCbwMLVif9/0MlzU=; b=eFWo9djSZnapiby1a6294QU76a
 0uNb4ys/vIYagoygoOm/y4YxK6WfaNOjwUZ2TdqzKQkMihwOM583n1Ief4Q69ngzC7Bg/xKQTOzIa
 G2VO91XVS5zopxnUXpK2trEm0C88D+m6jAwD1I3ixvOk9YhJNfLD0cOhVj0xYTfbE6e8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Fn6mkdd2uwfI5DDn7Iu6PCrGjXytCbwMLVif9/0MlzU=; b=U
 q3Bbg7tBZojN533kQYDIfUhjityBINpszdICgj/dlyoimiFbUI/Egxus8pzB7dWWEgZ7DtFYoaYG5
 DF0pI28sNDNib/s87N3+i07GOJAX5KzZRk6valxFAM83JOFZlDLzvUM0RggM5ko04as0rXlv2iGq/
 CmD4ft33zr9TBccQ=;
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps (TLS1.2:DHE-RSA-AES256-SHA:256)
 (Exim 4.95) id 1vQ2Eo-0007m8-Ej
 for jfs-discussion@lists.sourceforge.net;
 Mon, 01 Dec 2025 11:38:39 +0000
Received: from DESKTOP-L0HPE2S (unknown [124.16.141.245])
 by APP-01 (Coremail) with SMTP id qwCowABH28ovfi1ptDm9Ag--.24846S2;
 Mon, 01 Dec 2025 19:38:25 +0800 (CST)
From: Haotian Zhang <vulab@iscas.ac.cn>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Mon,  1 Dec 2025 19:38:01 +0800
Message-ID: <20251201113801.1700-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowABH28ovfi1ptDm9Ag--.24846S2
X-Coremail-Antispam: 1UD129KBjvdXoWrKr4UZr1fJr48ZF45tF13Jwb_yoWxtrb_ta
 yxCr4kCwn5tr4DCFy8JrWYgry5u398K348GF4rJF12yrnFyF13Ar9rJrZxGr98Gan8Kryk
 X3s2qrW5twnrujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbwkFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
 Cr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
 jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr
 1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxAIw28IcxkI7VAKI48J
 MxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwV
 AFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y0x0EwIxGrwCI42IY6xIIjxv2
 0xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAIw20EY4
 v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AK
 xVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUj6pB7UUUUU==
X-Originating-IP: [124.16.141.245]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBg0DA2ktN9f3CQAAsR
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The jfsIOWait() thread calls try_to_freeze() but lacks
 set_freezable(), 
 causing it to remain non-freezable by default. This prevents proper freezing
 during system suspend. Add set_freezable() to make the thread freezable as
 intended. 
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1vQ2Eo-0007m8-Ej
X-Mailman-Approved-At: Mon, 01 Dec 2025 14:37:52 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Add missing set_freezable() for
 freezable kthread
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Haotian Zhang <vulab@iscas.ac.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The jfsIOWait() thread calls try_to_freeze() but lacks set_freezable(),
causing it to remain non-freezable by default. This prevents proper
freezing during system suspend.

Add set_freezable() to make the thread freezable as intended.

Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
---
 fs/jfs/jfs_logmgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index b343c5ea1159..5b1c5da04163 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -2311,6 +2311,7 @@ int jfsIOWait(void *arg)
 {
 	struct lbuf *bp;
 
+	set_freezable();
 	do {
 		spin_lock_irq(&log_redrive_lock);
 		while ((bp = log_redrive_list)) {
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
