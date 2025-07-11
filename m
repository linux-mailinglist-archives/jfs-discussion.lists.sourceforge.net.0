Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F82B02214
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Jul 2025 18:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3CgJbFeKINEsgKzKiiE5E7UkJEW5whfpz/IC+6LxeJg=; b=VK9fpHDKhFU/8sazRV17h+GT6K
	lDaPpAh72zMNlUHIz8f7kGmlmM5NuUuJX/qa2akEKo9O3TkbRjIytM905cQZDsULj85grsqKbQUNB
	hUXT2KmR8tphSKAkLD/3/mkFMhzm+dh/NgHDXGOcVw3uyt+HreNjUeCyCQxDFGqQf/Q0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uaGpN-0006I9-Hr;
	Fri, 11 Jul 2025 16:42:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1uaGpL-0006I2-M9
 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 16:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fnLbYKRKFNofpGYhrrtYzrLsa9RrfDtLERsr9B1iH/E=; b=LmTzeqqlDyFq/9gYo8N6l/mbFL
 w6yrRxU3ou+wSQAgvO5H5fSg5DXIl8qKvfDvii6DZLBQw/a/TDuGpVHr4CsdVHElWeHy660yMV+u/
 3QxxZlkVjYiKx0WiXcWxW5vASKaDGSskYZERypLtmdtIOk62tvsxr7KOfd2b/UclOzrg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fnLbYKRKFNofpGYhrrtYzrLsa9RrfDtLERsr9B1iH/E=; b=VealUpitghip16+KPdS2/AOF80
 SU1946SBFkb1Ox/b2sdfrBWqySqOF36oAcHua6LoHV2bOIrJZR06HVG93GTjVKZtiFAxEME7qmU0K
 9UqkuOR5DkT+9yqB0Qi0PF7pAvDPK+LOYktiuLwF9iIvw5uPdw76HvapXLqzhK/W4ytc=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uaGpK-0007cf-BK for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 16:42:23 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 4C47D1F451;
 Fri, 11 Jul 2025 16:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1752252130; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fnLbYKRKFNofpGYhrrtYzrLsa9RrfDtLERsr9B1iH/E=;
 b=Qk014AogqNi7x12zQcZhqRXe8Y4e7QSQILi0SgTftKlRmKA0EsURdDlwMgEaQe8Uv/c/0d
 OeZl84qLmGk2HgLp9QS02h7onsG2dXAvbVM5FaQ6VrgTiFia4sV0Jscbq5aZkir0LssqIr
 fjTc5r2+rMyaSAdEzNbiw8zIQyv5Jgk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1752252130;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fnLbYKRKFNofpGYhrrtYzrLsa9RrfDtLERsr9B1iH/E=;
 b=qGbqJis16XxJexZPDNKMstX2DKgnnCGBk5uLxt7UUJiNurmgrl8rwEs4FeJFQLQJqJ54AV
 XbCcErBlcxGiAuCA==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1752252129; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fnLbYKRKFNofpGYhrrtYzrLsa9RrfDtLERsr9B1iH/E=;
 b=bwX2k7F4OfcWUPB/XEObXTbsEaHG2pQXzFCW1xfcxnIhb9LnxGT+3c4yZ6jZb8cWDVuU7X
 dtv12J8xUn5RZptjqLewhTzJkkT6+hjyEZQKNzCo14hQ44B0qf3noDViX6EvmxBSvqsS4f
 NTjk+4krrxrmMvSbAm26NsM7UYq/vpI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1752252129;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fnLbYKRKFNofpGYhrrtYzrLsa9RrfDtLERsr9B1iH/E=;
 b=txUHIri+bNrjwqDYM0VUDvoMCSV29nLPHyYXE6MeCa0ONsOw2oOKtiRpdJwoxMK44577sT
 vi2bT0lhwUlulrBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3AC5513918;
 Fri, 11 Jul 2025 16:42:09 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id At9UDuE+cWiXfAAAD6G6ig
 (envelope-from <jack@suse.cz>); Fri, 11 Jul 2025 16:42:09 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id E1769A099A; Fri, 11 Jul 2025 18:42:08 +0200 (CEST)
Date: Fri, 11 Jul 2025 18:42:08 +0200
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com>
Message-ID: <okx6a3ngonajh7jrzc65ybd4i6bcnkc7gm4mggyo3jlm6s2ojx@yy5jcipsnd3l>
References: <686a8143.a00a0220.c7b3.005b.GAE@google.com>
 <68710315.a00a0220.26a83e.004a.GAE@google.com>
 <gbzywhurs75yyg2uckcbi7qp7g4cx6tybridb4spts43jxj6gw@66ab5zymisgc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <gbzywhurs75yyg2uckcbi7qp7g4cx6tybridb4spts43jxj6gw@66ab5zymisgc>
X-Spam-Level: 
X-Spamd-Result: default: False [-5.30 / 50.00]; REPLY(-4.00)[];
 BAYES_HAM(-3.00)[100.00%]; SUSPICIOUS_RECIPS(1.50)[];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=8396fd456733c122];
 MID_RHS_NOT_FQDN(0.50)[]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_TWELVE(0.00)[16]; RCVD_COUNT_THREE(0.00)[3];
 FUZZY_RATELIMITED(0.00)[rspamd.com]; MIME_TRACE(0.00)[0:+];
 ARC_NA(0.00)[]; RCVD_TLS_LAST(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,suse.cz:email,appspotmail.com:email,goo.gl:url,syzkaller.appspot.com:url,imap1.dmz-prg2.suse.org:helo];
 TO_DN_SOME(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[01ef7a8da81a975e1ccd];
 RCVD_VIA_SMTP_AUTH(0.00)[]; REDIRECTOR_URL(0.00)[goo.gl];
 MISSING_XM_UA(0.00)[]; SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -5.30
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri 11-07-25 17:51:40, Jan Kara wrote: > On Fri 11-07-25
 05:27:01, syzbot wrote: > > syzbot has bisected this issue to: > > > > commit
 77eb64439ad52d8afb57bb4dae24a2743c68f50d > > Author: Pankaj Ra [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1uaGpK-0007cf-BK
Subject: Re: [Jfs-discussion] [syzbot] [ext4?] WARNING in bdev_getblk
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
Cc: p.raghav@samsung.com, shaggy@kernel.org, brauner@kernel.org,
 sj1557.seo@samsung.com, jack@suse.cz, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 libaokun1@huawei.com, tytso@mit.edu, linux-fsdevel@vger.kernel.org,
 adilger.kernel@dilger.ca, anna.luese@v-bien.de, linux-ext4@vger.kernel.org,
 linkinjeon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri 11-07-25 17:51:40, Jan Kara wrote:
> On Fri 11-07-25 05:27:01, syzbot wrote:
> > syzbot has bisected this issue to:
> > 
> > commit 77eb64439ad52d8afb57bb4dae24a2743c68f50d
> > Author: Pankaj Raghav <p.raghav@samsung.com>
> > Date:   Thu Jun 26 11:32:23 2025 +0000
> > 
> >     fs/buffer: remove the min and max limit checks in __getblk_slow()
> > 
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=127d8d82580000
> > start commit:   835244aba90d Add linux-next specific files for 20250709
> > git tree:       linux-next
> > final oops:     https://syzkaller.appspot.com/x/report.txt?x=117d8d82580000
> > console output: https://syzkaller.appspot.com/x/log.txt?x=167d8d82580000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=8396fd456733c122
> > dashboard link: https://syzkaller.appspot.com/bug?extid=01ef7a8da81a975e1ccd
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=115c40f0580000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11856a8c580000
> > 
> > Reported-by: syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com
> > Fixes: 77eb64439ad5 ("fs/buffer: remove the min and max limit checks in __getblk_slow()")
> > 
> > For information about bisection process see: https://goo.gl/tpsmEJ#bisection
> 
> Ah, I see what's going on here. The reproducer mounts ext4 filesystem and
> sets block size on loop0 loop device to 32k using LOOP_SET_BLOCK_SIZE. Now
> because there are multiple reproducer running using various loop devices it
> can happen that we're setting blocksize during mount which obviously
> confuses the filesystem (and makes sb mismatch the bdev block size). It is
> really not a good idea to allow setting block size (or capacity for that
> matter) underneath an exclusive opener. The ioctl should have required
> exclusive open from the start but now it's too late to change that so we
> need to perform a similar dance with bd_prepare_to_claim() as in
> loop_configure() to grab temporary exclusive access... Sigh.
> 
> Anyway, the commit 77eb64439ad5 is just a victim that switched KERN_ERR
> messages in the log to WARN_ON so syzbot started to notice this breakage.

Sent fix here:
https://lore.kernel.org/all/20250711163202.19623-2-jack@suse.cz

								Honza

#syz test

From 4aa776eb9b3967bff31087b7595ddcc902200056 Mon Sep 17 00:00:00 2001
From: Jan Kara <jack@suse.cz>
Date: Fri, 11 Jul 2025 18:16:44 +0200
Subject: [PATCH] loop: Avoid updating block size under exclusive owner
X-Developer-Signature: v=1; a=openpgp-sha256; l=3277; i=jack@suse.cz;
 h=from:subject; bh=cdZuEh4Dk+/Xi2fTOZRQxovM+RzBRb1FW6MBEN4Icws=;
 b=owGbwMvMwME4Z+4qdvsUh5uMp9WSGDIKbZq0xH0Ml+s1mUn/FXh44vuGfB7/6WemZT/fv/SJRXZ0
 +Oc9nYzGLAyMHAyyYoosqyMval+bZ9S1NVRDBmYQKxPIFAYuTgGYyJE37P+TzLkNtVn5K1Q9Umaq3T
 Vmcb4tyOvXYsYcLfHv9g9F9zVruARylmxL8Gx73a307cwFM9/kww0b8vqYHvX33H2TnVeYsO+NW0RF
 KsOmd0cUjl7aWW4kFO6cOtNdIZ/HrHijk2bAKdYZ1wwucvbN27p4kRvXZfMu06WeZyz/7+FrF/9270
 Ostl1ml45ORWBlp5amyvXZvl33u5tr76znST50+oRf0to8n2afbSZCK3Ris+7MjpqnMo+lK+Sf5s/+
 L65hUjq2EwOyugu3PAk1khb9cHXhXN6anJo32VfsI6N+MsSzMxh+4O86wRg/98EH3obLLcIX2wOjKu
 es+vb1lH1Gx6ctQVE7E7Ok87oA
X-Developer-Key: i=jack@suse.cz; a=openpgp;
 fpr=93C6099A142276A28BBE35D815BC833443038D8C

Syzbot came up with a reproducer where a loop device block size is
changed underneath a mounted filesystem. This causes a mismatch between
the block device block size and the block size stored in the superblock
causing confusion in various places such as fs/buffer.c. The particular
issue triggered by syzbot was a warning in __getblk_slow() due to
requested buffer size not matching block device block size.

Fix the problem by getting exclusive hold of the loop device to change
its block size. This fails if somebody (such as filesystem) has already
an exclusive ownership of the block device and thus prevents modifying
the loop device under some exclusive owner which doesn't expect it.

Reported-by: syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com
Signed-off-by: Jan Kara <jack@suse.cz>
---
 drivers/block/loop.c | 38 ++++++++++++++++++++++++++++++--------
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/block/loop.c b/drivers/block/loop.c
index 500840e4a74e..5cc72770e253 100644
--- a/drivers/block/loop.c
+++ b/drivers/block/loop.c
@@ -1432,17 +1432,34 @@ static int loop_set_dio(struct loop_device *lo, unsigned long arg)
 	return 0;
 }
 
-static int loop_set_block_size(struct loop_device *lo, unsigned long arg)
+static int loop_set_block_size(struct loop_device *lo, blk_mode_t mode,
+			       struct block_device *bdev, unsigned long arg)
 {
 	struct queue_limits lim;
 	unsigned int memflags;
 	int err = 0;
 
-	if (lo->lo_state != Lo_bound)
-		return -ENXIO;
+	/*
+	 * If we don't hold exclusive handle for the device, upgrade to it
+	 * here to avoid changing device under exclusive owner.
+	 */
+	if (!(mode & BLK_OPEN_EXCL)) {
+		err = bd_prepare_to_claim(bdev, loop_set_block_size, NULL);
+		if (err)
+			return err;
+	}
+
+	err = mutex_lock_killable(&lo->lo_mutex);
+	if (err)
+		goto abort_claim;
+
+	if (lo->lo_state != Lo_bound) {
+		err = -ENXIO;
+		goto unlock;
+	}
 
 	if (lo->lo_queue->limits.logical_block_size == arg)
-		return 0;
+		goto unlock;
 
 	sync_blockdev(lo->lo_device);
 	invalidate_bdev(lo->lo_device);
@@ -1455,6 +1472,11 @@ static int loop_set_block_size(struct loop_device *lo, unsigned long arg)
 	loop_update_dio(lo);
 	blk_mq_unfreeze_queue(lo->lo_queue, memflags);
 
+unlock:
+	mutex_unlock(&lo->lo_mutex);
+abort_claim:
+	if (!(mode & BLK_OPEN_EXCL))
+		bd_abort_claiming(bdev, loop_set_block_size);
 	return err;
 }
 
@@ -1473,9 +1495,6 @@ static int lo_simple_ioctl(struct loop_device *lo, unsigned int cmd,
 	case LOOP_SET_DIRECT_IO:
 		err = loop_set_dio(lo, arg);
 		break;
-	case LOOP_SET_BLOCK_SIZE:
-		err = loop_set_block_size(lo, arg);
-		break;
 	default:
 		err = -EINVAL;
 	}
@@ -1530,9 +1549,12 @@ static int lo_ioctl(struct block_device *bdev, blk_mode_t mode,
 		break;
 	case LOOP_GET_STATUS64:
 		return loop_get_status64(lo, argp);
+	case LOOP_SET_BLOCK_SIZE:
+		if (!(mode & BLK_OPEN_WRITE) && !capable(CAP_SYS_ADMIN))
+			return -EPERM;
+		return loop_set_block_size(lo, mode, bdev, arg);
 	case LOOP_SET_CAPACITY:
 	case LOOP_SET_DIRECT_IO:
-	case LOOP_SET_BLOCK_SIZE:
 		if (!(mode & BLK_OPEN_WRITE) && !capable(CAP_SYS_ADMIN))
 			return -EPERM;
 		fallthrough;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
