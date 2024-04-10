Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C703589EB6D
	for <lists+jfs-discussion@lfdr.de>; Wed, 10 Apr 2024 09:06:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ruS2I-0007qz-C2;
	Wed, 10 Apr 2024 07:06:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1ruS2G-0007qc-7d
 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Apr 2024 07:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pLNFfWJZyrrjt5ug/1IiEA0s6nA/zcDIGuvnAc6EYyU=; b=Urfu3ULk43fNkoXKcObfCmR0RQ
 zE54Tl40tWqL15Ku6HHTB+vJyVI00Xa7Hxj8p7M6IYSBJ3WQ7DOIeSiQcyLQKuSVT12aFSQY0VdTf
 9zvwgGGBaOZgMK5BmaGItqWX8U/8OD8pcATuC5tI3ZRxUkdZTZlXLLr1kJpreAnLEvgQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pLNFfWJZyrrjt5ug/1IiEA0s6nA/zcDIGuvnAc6EYyU=; b=KsbB38BzEz213PtbeCbYrgzVon
 VGP4IUl5JG04OWzgA8UTJM/0/gDE1bOUYqxj7JTTk7Bc1HqXc3chbZYvsECcMCKDRRmTvKGz15JMs
 gQxH9T5aVjSzBVpNPE0WLjjonfQ+YJ9SI7+UBqPdoAb6tNWQk9XHQqy2hBD0h/VyfTDU=;
Received: from out203-205-251-60.mail.qq.com ([203.205.251.60])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ruS2E-0005Op-Tq for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Apr 2024 07:06:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1712732749; bh=pLNFfWJZyrrjt5ug/1IiEA0s6nA/zcDIGuvnAc6EYyU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=noOkwmHFQLy3SJklKNWyTaMpeRdTFVxC968jjW5IYPD8JXzKLCYmNGdOjxum8pXek
 lcdSAzs0qnsHsk+mggwbAdN8anYtrEriRCdjSH28HbTOTi0cZqA7+uZM8g8NXZG6wA
 4ZZ+mGgRBhaYBRlOf/IhC+xCk+WxOsiJm+J7as7Q=
Received: from pek-lxu-l1.wrs.com ([111.198.228.153])
 by newxmesmtplogicsvrsza10-0.qq.com (NewEsmtp) with SMTP
 id 16E9E07C; Wed, 10 Apr 2024 15:05:46 +0800
X-QQ-mid: xmsmtpt1712732746taw9g6jm2
Message-ID: <tencent_59925DB41938CFAC0DDEA5A40DB592425D07@qq.com>
X-QQ-XMAILINFO: MIAHdi1iQo+z6Me8BtzExIGoq9q6kn1ilN1+Ec9Q63Jhv6qjQlpeJnwHPB3qZP
 fM0X6whyJCXIGus//1EjkvBvcpw1HrIZgiT1xP+6jirBUlHhvwCAW1gPMAnlku9xKbgsumlHPs/w
 6P0T6w8bK8ZbNPa4RzxBhzZIrCfmnvuqeX5Y7ICdI+Pb2l9+3veyUebYmFVhlzFT4Tfv+W6m2Iro
 SGzByP40FpR2FY0bilje3dXlxksQLrrHoYH4srDecZ2qmQWqbV+AufclGN2Kdgjbc1p1+7SdLPKI
 mxEgGx0Yjboonu5s5hzcZxz4sUuWjG1Tf2+qKPUiE9fY/twK2QwKwGVzLipLSyZOIllBvM8penmU
 cozVmNEL0t+m1bjl+lAAHq7JuIA9BSnmwsdxiWYnW1niy8/f35KXPaDuvmeiAxGvSZWoybD/MQq0
 5LE8Vp0In2V8X2IYI39eCvV6R4Rux1DADk7k3ly28SnSIS9qDOFHKRRwZDKQQhjY0IGAbcgYAm3g
 7N269nIOwsO8nrwToukukOIsw5Rrlc4jGX8yVtpJU+0CGT6lQhg1Yxn2zi0cQWEicOKT9FN0Im41
 MlELpxFEvHf+sXzI6wYQy5YJmOlHlBuU3rTd2Ewb7JaHkLtC5woOdXm4JFd0MF1FMgFXWFg/aZHk
 A9OziP1aaXB+co9psyv2MAeapUrUhufYZFS2pvKXr6BAtVRr3/TpHYmz4V/S+/mMbXT6I4Dgi2Ne
 ycOi2c3ad3l2qaUmtq++YkY16ny9LrW559DOFwhd9yu3ygssWBZ4Q5yYn5FsBWdHhDcn4y1QTYSu
 iyiaOovWrNxJLlgOLC8uqI1vfUU8WihwK/lU0LfvVNjqFuhuxVL8oWBdnYj0+kxG/cVZAHepLAyv
 ZzKJKNzZQ0EOs/CxPkxXvJZAO3rmVKaj29yfbiTDsdNjRYi0uQoLwwN7C5fJQ7ZnfAmtLZ3EH8SG
 RTuRTZdHM=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
To: syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
Date: Wed, 10 Apr 2024 15:05:47 +0800
X-OQ-MSGID: <20240410070546.719365-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <000000000000ea6cba0615a3f177@google.com>
References: <000000000000ea6cba0615a3f177@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  [syzbot reported] general protection fault,
 probably for non-canonical
 address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI KASAN:
 null-ptr-deref
 in range [0x0000000000000008-0x000000000000000f [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.205.251.60 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1ruS2E-0005Op-Tq
Subject: [Jfs-discussion] [PATCH] jfs: reserve the header and use freelist
 from second
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: linux-fsdevel@vger.kernel.org, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

[syzbot reported]
general protection fault, probably for non-canonical address 0xdffffc0000000001: 0000 [#1] PREEMPT SMP KASAN PTI
KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
CPU: 0 PID: 5061 Comm: syz-executor404 Not tainted 6.8.0-syzkaller-08951-gfe46a7dd189e #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
RIP: 0010:dtInsertEntry+0xd0c/0x1780 fs/jfs/jfs_dtree.c:3713
...
[Analyze]
When the pointer h has the same value as p, after writing name in UniStrncpy_to_le(),
p->header.flag will be cleared.
This will cause the previously true judgment "p->header.flag & BT-LEAF" to change
to no after writing the name operation, this leads to entering an incorrect branch
and accessing the uninitialized object ih when judging this condition for the
second time.
[Fix]
When allocating slots from the freelist, we start from the second one to preserve
the header of p from being incorrectly modified.

Reported-by: syzbot+bba84aef3a26fb93deb9@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_dtree.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 031d8f570f58..deb2a5cc78d8 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -3618,7 +3618,8 @@ static void dtInsertEntry(dtpage_t * p, int index, struct component_name * key,
 	kname = key->name;
 
 	/* allocate a free slot */
-	hsi = fsi = p->header.freelist;
+	hsi = fsi = p->header.freelist = p->header.freelist == 0 ? 
+		1 : p->header.freelist;
 	h = &p->slot[fsi];
 	p->header.freelist = h->next;
 	--p->header.freecnt;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
