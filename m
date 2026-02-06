Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eL8DC/b3iWn7FAAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Mon, 09 Feb 2026 16:06:30 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBEF11185E
	for <lists+jfs-discussion@lfdr.de>; Mon, 09 Feb 2026 16:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cmw31K8X9CjZIqlAumgWM4zq2+aSo5f8KFUE7Bg+dho=; b=PjCESFHlD62NOMduiR0wNhRRLp
	DJbDzWBmT7kvldMJErHOH5QtfqWZ/F/4ECGuaHsDKHIwRQUscdkPt85TtfA9dFkC6SWBtZr7Kd6hB
	tV7tcOsvhGPINV1lhxprTKtY37AObDCc6PFxUjSljvZipzS2uUY44ENH8Zdr7X85gQTk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vpSih-0004pa-Qi;
	Mon, 09 Feb 2026 14:58:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ssp.nesin@crpt.ru>) id 1voH28-0005Oa-Ty
 for jfs-discussion@lists.sourceforge.net;
 Fri, 06 Feb 2026 08:17:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WgrnN2NOrIMIViNK8+v7WkDYFXLAtsuE4CP9tAe+G8U=; b=dpN4DLGx5gTmLOMwcAhOc4+FUU
 ouYw6w4bKkK/11butYqRUtKkbhS/ZjaSVv21Qw9YSSKj9xSPnctb7qjEKBrVwhVG0gkTx23bvlWMQ
 E5UgjI6ptRQDW354Zke06AH3Jxe6n8YjoTjOuqmiXKU1ZbmvlDLF4b8Vswi/HrT3fkb0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WgrnN2NOrIMIViNK8+v7WkDYFXLAtsuE4CP9tAe+G8U=; b=B
 kFJ62JEbcgq5Hu4MFyPIGwLEzsz23P23vC20hGzwLYdFJAs7/scBS0VQt6Q8n3JN/KwtQUs6w7JbP
 +LgD59pnlf9M73UDOpNBQVaFrK6fT0O9d0LBY+40pTNqVmOYKDAt8C1zchP5FOhwnpLIeAzQm6jLP
 mx6SPVQPG30nwb4M=;
Received: from mail.crpt.ru ([91.236.205.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1voH27-00054h-N5 for jfs-discussion@lists.sourceforge.net;
 Fri, 06 Feb 2026 08:17:44 +0000
Received: from ssp-soft.crpt.local ([10.200.60.21])
 (user=ssp.nesin@crpt.ru mech=LOGIN bits=0)
 by mail.crpt.ru  with ESMTPSA id 61681f34014601-61681f37014601
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 6 Feb 2026 11:01:56 +0300
To: Dave Kleikamp <shaggy@kernel.org>
Date: Fri,  6 Feb 2026 15:01:18 +0700
Message-Id: <20260206080118.923439-1-ssp.nesin@crpt.ru>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-FEAS-Auth-User: ssp.nesin@crpt.ru
X-FEAS-BEC-Info: WlpIGw0aAQkEARIJHAEHBlJSCRoLAAEeDUhZUEhYSFhIWUhZXkguLVxYWC48UVlRWFhYWVxaSFlfSBsbGEYGDRsBBigLGhgcRhodSFlIWV9IGxsYRgYNGwEGKAsaGBxGGh1IWUhZSFlaSFlYRlpYWEZeWEZaWUhQSFhIWEhRSFhIWEhYSFpaSAwdHBwJDAEcEQlZUCgPBQkBBEYLBwVIWEhbXkgCDhtFDAEbCx0bGwEHBigEARscG0YbBx0aCw0OBxoPDUYGDRxIWEhaUEgEAQYdEEUDDRoGDQQoHg8NGkYDDRoGDQRGBxoPSFhIWlBIBB4LRRgaBwINCxwoBAEGHRAcDRscAQYPRgcaD0hYSFleSBpGGwUBGgYHHigHBRhGGh1IWEhZX0gbAAkPDxEoAw0aBg0ERgcaD0hYSFlfSBsbGEYGDRsBBigLGhgcRhodSFlIXVtIGxESCgccQ1AODVsKUQ0OC1haCg5aDFgKXF1QKBsREgMJBAQNGkYJGBgbGAccBQkBBEYLBwVIWEhaXUgSAA0GD0YRHSgGBxocAB8NGxwNGgZGDQwdSFg=
X-FEAS-Client-IP: 10.200.60.21
X-FE-Envelope-From: ssp.nesin@crpt.ru
X-FE-Policy-ID: 0:9:0:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=crpt.ru; s=crpt.ru;
 c=relaxed/relaxed; 
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=WgrnN2NOrIMIViNK8+v7WkDYFXLAtsuE4CP9tAe+G8U=;
 b=shbMugGDPs8zdx//5Co0jHYUHMSTabqXoq/Hnpv7JrgcNLidV4pjQ/sBgF1chaMWNxbuAuAGL1mM
 NeRDFlQXXFab/3jw3uxXO4zi7wv81eWZLUnGIfuLdFqMvpz7z51UgSfQjV8Pj68DyByKOt1UJe4c
 6rddHDb49jNm0qWc/2L5ppdgZWIBs3LVEPkgCOq77qgeFuLR2C7n7I57V9TIpXmeyv7WMjTSiMuI
 bDk0gFYMk9GJhLKugauybFOJ98y7R1I4PN4YMd0A63P4t3ZWiOV99Pb7WBzh1yfdrG/qgWaJvhu+
 gJIt/+E0USi57o+d2MchhpFDGVosT2EG4monqQ==
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In jfs_readdir(),
 the stbl slot index validation uses a maximum
 value of DTPAGEMAXSLOT (128). However, for root directory pages (bn == 0)
 the maximum valid slot index is DTROOTMAXSLOT (9), not DTPAGEM [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1voH27-00054h-N5
X-Mailman-Approved-At: Mon, 09 Feb 2026 14:58:34 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix out-of-bounds access in
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
From: Rostislav Nesin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Rostislav Nesin <ssp.nesin@crpt.ru>
Cc: jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 Rostislav Nesin <ssp.nesin@crpt.ru>, linux-kernel@vger.kernel.org,
 syzbot+8fe3b9efc02bf2d0b458@syzkaller.appspotmail.com,
 Zheng Yu <zheng.yu@northwestern.edu>, Aditya Dutt <duttaditya18@gmail.com>,
 Roman Smirnov <r.smirnov@omp.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-5.71 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[79];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:lvc-project@linuxtesting.org,m:ssp.nesin@crpt.ru,m:linux-kernel@vger.kernel.org,m:syzbot+8fe3b9efc02bf2d0b458@syzkaller.appspotmail.com,m:zheng.yu@northwestern.edu,m:duttaditya18@gmail.com,m:r.smirnov@omp.ru,m:syzbot@syzkaller.appspotmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.sourceforge.net,linuxtesting.org,crpt.ru,vger.kernel.org,syzkaller.appspotmail.com,northwestern.edu,gmail.com,omp.ru];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,crpt.ru:s=crpt.ru];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[jfs-discussion,8fe3b9efc02bf2d0b458];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[ssp.nesin@crpt.ru];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,crpt.ru:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[appspotmail.com:email,syzkaller.appspot.com:url,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,crpt.ru:mid,crpt.ru:email,crpt.ru:replyto]
X-Rspamd-Queue-Id: 3BBEF11185E
X-Rspamd-Action: no action

In jfs_readdir(), the stbl slot index validation uses a maximum value
of DTPAGEMAXSLOT (128). However, for root directory pages (bn == 0)
the maximum valid slot index is DTROOTMAXSLOT (9), not DTPAGEMAXSLOT
(128). This allows slot indices 9-127 to pass validation on root
pages, leading to out-of-bounds access when reading from p->slot[].

Similarly, the 'next' slot index in the directory entry name segment
chain is not validated. The 'next' field in struct ldtentry and
struct dtslot is read directly from disk (s8 next), and a corrupted
filesystem image could contain any value, causing out-of-bounds access
when following the segment chain via p->slot[next].

BUG: KASAN: slab-out-of-bounds in jfs_strfromUCS_le+0x28d/0x3b0 fs/jfs/jfs_unicode.c:40
Read of size 2 at addr ffff88807a187f72 by task syz.0.6/5913

CPU: 1 UID: 0 PID: 5913 Comm: syz.0.6 Not tainted 6.13.0-rc5-syzkaller-00012-g0bc21e701a6f #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 print_address_description mm/kasan/report.c:378 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:489
 kasan_report+0x143/0x180 mm/kasan/report.c:602
 jfs_strfromUCS_le+0x28d/0x3b0 fs/jfs/jfs_unicode.c:40
 jfs_readdir+0x199d/0x3c50 fs/jfs/jfs_dtree.c:2975
 wrap_directory_iterator+0x91/0xd0 fs/readdir.c:65
 iterate_dir+0x571/0x800 fs/readdir.c:108
 __do_sys_getdents64 fs/readdir.c:403 [inline]
 __se_sys_getdents64+0x1e2/0x4b0 fs/readdir.c:389
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
 </TASK>

Fix this by validating stbl[i] and next against DTROOTMAXSLOT for root
directory pages (bn == 0).

Found by Linux Verification Center (linuxtesting.org) with Syzkaller.

Reported-by: syzbot+8fe3b9efc02bf2d0b458@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=8fe3b9efc02bf2d0b458
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Rostislav Nesin <ssp.nesin@crpt.ru>
---
This patch is prepared on top of the jfs-next branch of the maintainer's
repository (https://github.com/kleikamp/linux-shaggy.git).

 fs/jfs/jfs_dtree.c | 13 +++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 9ab3f2fc61d1..a1b2c3d4e5f6 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2902,7 +2902,7 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
 		stbl = DT_GETSTBL(p);
 
 		for (i = index; i < p->header.nextindex; i++) {
-			if (stbl[i] < 0) {
+			if (stbl[i] < 0 || (bn == 0 && stbl[i] > DTROOTMAXSLOT)) {
 				jfs_err("JFS: Invalid stbl[%d] = %d for inode %ld, block = %lld",
 					i, stbl[i], (long)ip->i_ino, (long long)bn);
 				free_page(dirent_buf);
@@ -2970,6 +2970,11 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
 			/* copy name in the additional segment(s) */
 			next = d->next;
 			while (next >= 0) {
+				if (bn == 0 && next > DTROOTMAXSLOT) {
+					jfs_err("JFS: Invalid next %d for inode %ld, block = %lld",
+						next, (long)ip->i_ino, (long long)bn);
+					goto skip_one;
+				}
 				t = (struct dtslot *) & p->slot[next];
 				name_ptr += outlen;
 				d_namleft -= len;

-- 
2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
