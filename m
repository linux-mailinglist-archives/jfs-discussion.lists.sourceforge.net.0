Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2374B020E6
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Jul 2025 17:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KRWcv5SY0aYr/nvCkneylDycReZcTDx1Tl6fs2T8Pws=; b=HvzW4XOlaT2TeMRgtrm25vuSa9
	d2Hizg+7KonzZvDz8B2xMzdKCs5x6fFBUnXJFjy6TRZsOmOrljfEtB3FZi7L8etp5EE0fx7a6ufvZ
	PGVREyhW3arUHDC0d3oyMIsgPTx++5KA/oZsondlDWiuvIkOKpINkgvAMQFFo8VH64UY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uaG2b-0003wx-C8;
	Fri, 11 Jul 2025 15:52:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1uaG2V-0003wb-4q
 for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 15:51:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=acjDWv/whgFgzS+zf85UQQJgYzekdYngZZ0xHb1TGMQ=; b=loPbnzHJIE3BBgzogWCh+wKOkW
 GrFf2Bk9pCGzLKOoQ069HV+6RYdI77sHTOaoDAYPeO0URXvRNy0PgUt6zGy1UZFNJyoMXfYChuwUg
 6wjLKCvYl7x8eig3ZAuWQqgasVfsEfUTQVYTCKMxC0JarLegS3OFrJOfoI+F6GmBrqYc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=acjDWv/whgFgzS+zf85UQQJgYzekdYngZZ0xHb1TGMQ=; b=WaBKEX/job0SrvXikvcnZCb/5h
 pgWQWt5rykpMP/5v6CbSKh6jnHxxxuOCPxrVFtw4HJ1pgdyqhiDMiRG9klCxwnQRbL1LofOit7S0B
 8DZXWdPr00+g/ZgNtU+PzrAfTLlUEBfIe2cf4TYKEKNRx7weIAJz87L4GRyg8ACPMy0s=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uaG2U-0004Nj-HV for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 15:51:55 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id CABE81F46E;
 Fri, 11 Jul 2025 15:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1752249103; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=acjDWv/whgFgzS+zf85UQQJgYzekdYngZZ0xHb1TGMQ=;
 b=pEueceIG+LLUmAwSxlIlS6KbZhaS67CQbYCZogV8JanGa+RYKhpT3lzlswxF9SDuC5hKaZ
 NnEOC7aYZYJpPXdH5TSQB4agBEKZAWYPCS+SB9oTV/DlqMCwJtHzuqL93od1q1YHsZT2A7
 bTKUtnHO2mzXVtUcuJ9YGnRgqQKb6+I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1752249103;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=acjDWv/whgFgzS+zf85UQQJgYzekdYngZZ0xHb1TGMQ=;
 b=38Jty+TG1JuYxbB2Vp6UbgTDsALnJTb6OLmrEVdCqFbsE7wUBp3ZTpwN/kf6921MTcctP2
 S71o7BD+p3EJTfBw==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1752249101; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=acjDWv/whgFgzS+zf85UQQJgYzekdYngZZ0xHb1TGMQ=;
 b=IQtdmBtBpuTb8gTGIr1PEBZiRqKa68ggXQ1R0JB4iqhvBVSLstP5kBlxmF4oYLajKEOtNE
 dVVoGRZkDDZ1pZDhW9DMuIPih9kjT+y1+hBVa6zFo7Ha2CYRnyk/gLuWKhmlESWFDAWb7u
 JzD0FqxESsGnlTAuj2/ZioFNzETtq9U=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1752249101;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=acjDWv/whgFgzS+zf85UQQJgYzekdYngZZ0xHb1TGMQ=;
 b=XbLkk3jN1smLgn+ygPtdZM1S9M+ZL3n3uA1dbOiM/shXrm4SyXjDS53vAzg0WS9QnRoD5V
 XQOaJ9p7Hi8giiDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 937D41388B;
 Fri, 11 Jul 2025 15:51:41 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id vZb8Iw0zcWj0bQAAD6G6ig
 (envelope-from <jack@suse.cz>); Fri, 11 Jul 2025 15:51:41 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id EA490A099A; Fri, 11 Jul 2025 17:51:40 +0200 (CEST)
Date: Fri, 11 Jul 2025 17:51:40 +0200
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com>
Message-ID: <gbzywhurs75yyg2uckcbi7qp7g4cx6tybridb4spts43jxj6gw@66ab5zymisgc>
References: <686a8143.a00a0220.c7b3.005b.GAE@google.com>
 <68710315.a00a0220.26a83e.004a.GAE@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <68710315.a00a0220.26a83e.004a.GAE@google.com>
X-Spam-Level: 
X-Spamd-Result: default: False [-1.30 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=8396fd456733c122];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_COUNT_THREE(0.00)[3];
 URIBL_BLOCKED(0.00)[appspotmail.com:email,suse.com:email,imap1.dmz-prg2.suse.org:helo,syzkaller.appspot.com:url,samsung.com:email,goo.gl:url];
 ARC_NA(0.00)[]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 RCPT_COUNT_TWELVE(0.00)[16]; MIME_TRACE(0.00)[0:+];
 RCVD_TLS_LAST(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,appspotmail.com:email,imap1.dmz-prg2.suse.org:helo,goo.gl:url,samsung.com:email,syzkaller.appspot.com:url];
 TO_DN_SOME(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[01ef7a8da81a975e1ccd];
 RCVD_VIA_SMTP_AUTH(0.00)[]; REDIRECTOR_URL(0.00)[goo.gl];
 MISSING_XM_UA(0.00)[]; SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -1.30
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri 11-07-25 05:27:01, syzbot wrote: > syzbot has bisected
 this issue to: > > commit 77eb64439ad52d8afb57bb4dae24a2743c68f50d > Author:
 Pankaj Raghav <p.raghav@samsung.com> > Date: Thu Jun 26 11:32 [...] 
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
X-Headers-End: 1uaG2U-0004Nj-HV
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

On Fri 11-07-25 05:27:01, syzbot wrote:
> syzbot has bisected this issue to:
> 
> commit 77eb64439ad52d8afb57bb4dae24a2743c68f50d
> Author: Pankaj Raghav <p.raghav@samsung.com>
> Date:   Thu Jun 26 11:32:23 2025 +0000
> 
>     fs/buffer: remove the min and max limit checks in __getblk_slow()
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=127d8d82580000
> start commit:   835244aba90d Add linux-next specific files for 20250709
> git tree:       linux-next
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=117d8d82580000
> console output: https://syzkaller.appspot.com/x/log.txt?x=167d8d82580000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=8396fd456733c122
> dashboard link: https://syzkaller.appspot.com/bug?extid=01ef7a8da81a975e1ccd
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=115c40f0580000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11856a8c580000
> 
> Reported-by: syzbot+01ef7a8da81a975e1ccd@syzkaller.appspotmail.com
> Fixes: 77eb64439ad5 ("fs/buffer: remove the min and max limit checks in __getblk_slow()")
> 
> For information about bisection process see: https://goo.gl/tpsmEJ#bisection

Ah, I see what's going on here. The reproducer mounts ext4 filesystem and
sets block size on loop0 loop device to 32k using LOOP_SET_BLOCK_SIZE. Now
because there are multiple reproducer running using various loop devices it
can happen that we're setting blocksize during mount which obviously
confuses the filesystem (and makes sb mismatch the bdev block size). It is
really not a good idea to allow setting block size (or capacity for that
matter) underneath an exclusive opener. The ioctl should have required
exclusive open from the start but now it's too late to change that so we
need to perform a similar dance with bd_prepare_to_claim() as in
loop_configure() to grab temporary exclusive access... Sigh.

Anyway, the commit 77eb64439ad5 is just a victim that switched KERN_ERR
messages in the log to WARN_ON so syzbot started to notice this breakage.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
