Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EB984B24F
	for <lists+jfs-discussion@lfdr.de>; Tue,  6 Feb 2024 11:17:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rXIVd-00089h-8V;
	Tue, 06 Feb 2024 10:16:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rXIVb-00089N-2O
 for jfs-discussion@lists.sourceforge.net;
 Tue, 06 Feb 2024 10:16:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2LirOyLh0zu+s7wRq1797ksT14unjmeWiaZ9SYdvS8I=; b=aevq/P7egaU8lxBO9O6xTVhsBN
 XYmbm7V2Le5ia96PsKn1O8kKZ/n1CvGJpFdGHGQ8qTGdXi1G0T5iIoUaA+RywkQFmaLAKxPl4HXdL
 TvBE2CzQKf+pkw/ICfOBAOUdStCK9SfZyQaXXV6XwPSmM7y9A5KIEfMs+yuQ6VQ/lKD0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2LirOyLh0zu+s7wRq1797ksT14unjmeWiaZ9SYdvS8I=; b=hjc8cuom9B5WYiilKI7BBcJpXy
 +LMWQ7t3/cV4/IXDLGnr5fAiwoHIbeDNJkVBWDwnq7GWpxRlD7JA3tg8rBZvuXljq3E7PKoIPa7Ti
 ImtTzAvPtxQW0+klFhxNe6zbLTdWIO/IoGg1JQ2W9/kHjntJRJ6Ys47r3UypEvF4f374=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rXIVW-000337-RY for jfs-discussion@lists.sourceforge.net;
 Tue, 06 Feb 2024 10:16:55 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id EEE3E220F9;
 Tue,  6 Feb 2024 10:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1707214600; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2LirOyLh0zu+s7wRq1797ksT14unjmeWiaZ9SYdvS8I=;
 b=Q8YQ2uENU3Rnr2gHqXLol4WmotIFMOutXpkRfTHW2gLST/88wgUHtVSuOHiXOEv1qqaTsV
 X6dbQBGfiRKMLof872fAgdr1YmEf6XS3Q0CwFI3weChYmSjTYqJf6950nkko4bfu52A/yv
 Kp49LCi8benjFvyDS7F+1VPuX8DDkk8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1707214600;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2LirOyLh0zu+s7wRq1797ksT14unjmeWiaZ9SYdvS8I=;
 b=8RFn8U0pEZJ3W+YBB7s1CMNn2MZFUgqLOLhfrZRTAWNpJYaNAED5f7jB7QNb6acc9mKG92
 4y/avmbiNtmlRSDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1707214599; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2LirOyLh0zu+s7wRq1797ksT14unjmeWiaZ9SYdvS8I=;
 b=ENeWwoV8nglWM/9SSNvAlvlkV1mVYNIyWRihOLvqUIvBAZguhmuhP43O2x+LfailCUcysw
 oK+cpxrtTX5Rt2Yh2XGfA0yceJaqbc/nbIoXPkug9ajUqFNft67lkhwru6JOJvWxTuFK6V
 ZKP0kOzQcRO25YIXXsWxZiRDaUYP+9I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1707214599;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2LirOyLh0zu+s7wRq1797ksT14unjmeWiaZ9SYdvS8I=;
 b=VUEmkgTNEZVNFaY8rrBvaTxjceSk/L43rXxLq8TdvFjZwib94x+lXVaRlpEFiBvqWIfYb3
 y2wJ37BcN9wrzRCQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id E349A13A3A;
 Tue,  6 Feb 2024 10:16:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id VHB3NwcHwmXifAAAD6G6ig
 (envelope-from <jack@suse.cz>); Tue, 06 Feb 2024 10:16:39 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id A01A2A0809; Tue,  6 Feb 2024 11:16:39 +0100 (CET)
Date: Tue, 6 Feb 2024 11:16:39 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+8c777e17f74c66068ffa@syzkaller.appspotmail.com>
Message-ID: <20240206101639.waddtknizshby3x3@quack3>
References: <0000000000005a02da05ea31b295@google.com>
 <000000000000ba28410610b33cc5@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000ba28410610b33cc5@google.com>
Authentication-Results: smtp-out1.suse.de;
	none
X-Spamd-Result: default: False [2.89 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.01)[47.67%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=26188a62745981b4];
 TAGGED_RCPT(0.00)[8c777e17f74c66068ffa];
 MIME_GOOD(-0.10)[text/plain]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_TWELVE(0.00)[12];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,suse.cz:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 FREEMAIL_CC(0.00)[kernel.dk,kernel.org,gmail.com,suse.cz,lists.sourceforge.net,vger.kernel.org,googlegroups.com];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Level: **
X-Spam-Score: 2.89
X-Spam-Flag: NO
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 06-02-24 01:31:04, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rXIVW-000337-RY
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN: shift-out-of-bounds in
 dbSplit
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
 linux-kernel@vger.kernel.org, syzkaller@googlegroups.com, mushi.shar@gmail.com,
 linux-fsdevel@vger.kernel.org, ghandatmanas@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue 06-02-24 01:31:04, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=110ffd6c180000
> start commit:   708283abf896 Merge tag 'dmaengine-6.6-rc1' of git://git.ke..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=26188a62745981b4
> dashboard link: https://syzkaller.appspot.com/bug?extid=8c777e17f74c66068ffa
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=138fb834680000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1399c448680000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
 
Makes sense.

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
