Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D16E82DA60
	for <lists+jfs-discussion@lfdr.de>; Mon, 15 Jan 2024 14:43:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPNEn-0001bm-GA;
	Mon, 15 Jan 2024 13:42:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rPNEm-0001bg-9G
 for jfs-discussion@lists.sourceforge.net;
 Mon, 15 Jan 2024 13:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JctaG+RAw/QJiVZZcVRMYh+/2tbE9PXTDPR2pEygJ5s=; b=lILfxqCXiYPoq3ibjDn+LVo4wY
 oBsnp/zrqaquydLGM3T6t4j52Z73h5DTjZ7DZxBvZ/g0+VLtYM5nqPylMS29sC15bisIVFrEL58+i
 OAPw3UG/hSn+WB90kYb1i4lA3bG8LE8Da1CvDvITYAixccTKfF5u+F0A5Acv5IN/QLlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JctaG+RAw/QJiVZZcVRMYh+/2tbE9PXTDPR2pEygJ5s=; b=KaxFU3uxVvOc/hwfY/qNc6l/7K
 yX7HwgW8HoFSETsK7yhAz4tEZgYx6/nr5NH1U9I75rraR8+3G3zMD4Wp2ROSGrp78M9gTPbiIYlRZ
 FByTHy5UNNgbojad4PnfxipZotLh8CQVhie3/YHzZ7vkQOrhwRdh1lkaasjiV5cjq7hg=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rPNEh-0001Vp-D9 for jfs-discussion@lists.sourceforge.net;
 Mon, 15 Jan 2024 13:42:48 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 5AF3821EC2;
 Mon, 15 Jan 2024 13:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705326148; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JctaG+RAw/QJiVZZcVRMYh+/2tbE9PXTDPR2pEygJ5s=;
 b=msSEKnM2i/qWGCxQn23LtvtB/MFntQOOTrzP9njtHgw4h5dIaUCZ0Ehhxumd+NJFFUe64x
 M3ZDGEwQXh3tYo1qkfQmSlind1+i6dP1ppF2cK15xhrxY5u5nIAd4V4zllDj6Nbyvr4u60
 vADplLPUvGAPA9s06JBIeLcnjbTB8y0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705326148;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JctaG+RAw/QJiVZZcVRMYh+/2tbE9PXTDPR2pEygJ5s=;
 b=Jm5offHgUuqdEXex/jp1LqnOgiaIRM1Xt0ELsez0cHE5SHtpXsbsXX4rtqZzKbglApEnjj
 yDQu8TsWQVRnKjAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705326148; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JctaG+RAw/QJiVZZcVRMYh+/2tbE9PXTDPR2pEygJ5s=;
 b=msSEKnM2i/qWGCxQn23LtvtB/MFntQOOTrzP9njtHgw4h5dIaUCZ0Ehhxumd+NJFFUe64x
 M3ZDGEwQXh3tYo1qkfQmSlind1+i6dP1ppF2cK15xhrxY5u5nIAd4V4zllDj6Nbyvr4u60
 vADplLPUvGAPA9s06JBIeLcnjbTB8y0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705326148;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JctaG+RAw/QJiVZZcVRMYh+/2tbE9PXTDPR2pEygJ5s=;
 b=Jm5offHgUuqdEXex/jp1LqnOgiaIRM1Xt0ELsez0cHE5SHtpXsbsXX4rtqZzKbglApEnjj
 yDQu8TsWQVRnKjAw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 50E11136F5;
 Mon, 15 Jan 2024 13:42:28 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id /zq2E0Q2pWXoZAAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 15 Jan 2024 13:42:28 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 19A03A07EA; Mon, 15 Jan 2024 14:42:28 +0100 (CET)
Date: Mon, 15 Jan 2024 14:42:28 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com>
Message-ID: <20240115134228.vk73b4lkk7lxkgyr@quack3>
References: <00000000000027993305eb841df8@google.com>
 <000000000000c746f0060ee2b23a@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000c746f0060ee2b23a@google.com>
X-Spam-Level: *
X-Spamd-Bar: +
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=msSEKnM2;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=Jm5offHg
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [1.24 / 50.00]; RCVD_VIA_SMTP_AUTH(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 TO_DN_SOME(0.00)[];
 R_RATELIMIT(0.00)[to_ip_from(RLjmuxkameenh34oafz4d4fopd)];
 RCVD_COUNT_THREE(0.00)[3]; DKIM_TRACE(0.00)[suse.cz:+];
 MX_GOOD(-0.01)[]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 BAYES_HAM(-0.25)[73.41%]; SUBJECT_HAS_QUESTION(0.00)[];
 ARC_NA(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901];
 TAGGED_RCPT(0.00)[c1056fdfe414463fdb33];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_TWELVE(0.00)[13];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; MID_RHS_NOT_FQDN(0.50)[];
 FREEMAIL_CC(0.00)[kernel.dk,kernel.org,oracle.com,gmail.com,suse.cz,lists.sourceforge.net,vger.kernel.org,lists.linuxfoundation.org,googlegroups.com];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-Spam-Score: 1.24
X-Rspamd-Queue-Id: 5AF3821EC2
X-Spam-Flag: NO
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat 13-01-24 23:18:05, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPNEh-0001Vp-D9
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in diWrite
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
Cc: axboe@kernel.dk, shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com,
 linux-fsdevel@vger.kernel.org, ghandatmanas@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat 13-01-24 23:18:05, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17ec162be80000
> start commit:   493ffd6605b2 Merge tag 'ucount-rlimits-cleanups-for-v5.19'..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=d19f5d16783f901
> dashboard link: https://syzkaller.appspot.com/bug?extid=c1056fdfe414463fdb33
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12f431d2880000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1208894a880000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

Makes sense:

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
