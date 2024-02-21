Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8677085D5A9
	for <lists+jfs-discussion@lfdr.de>; Wed, 21 Feb 2024 11:34:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rcjvt-0002Ml-QF;
	Wed, 21 Feb 2024 10:34:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rcjvs-0002Mf-LX
 for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Feb 2024 10:34:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HCjnOHa77sD0Hwc3gx9J1PdVfdTw1xdGiol8HKEHfNI=; b=L/Ls5vLuOyp2Hvpb5oApFlyZgg
 LSsPzUs+uWsjAZas5Vb1HVN7EouRf0fZ9w+lw/4LiSBqzVRNrV3gPeXPMtu/VOmaeR+iLGh0JK/JZ
 o+kFk4BEdSaiaG6AK9T0V4wpEdGqBgLdJitWP177cX+ZDeLV7VHHxW4nONy8MpT7A5o0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HCjnOHa77sD0Hwc3gx9J1PdVfdTw1xdGiol8HKEHfNI=; b=iwa3VkT12COVr9z8WN10IqJy8h
 d2iybjPVHPsnIB81AvFGpeVExcfmbQU9J3+5fZR8zFMx37831pTsziykPnWgTMqaOEQmYBpX0BnGL
 NXZZij2yG9dB5R2HUqAfAFG10qHS93tOADPvIxn3QU8UF7CQYP/CjX51yG0TOslExYuo=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rcjvn-0006PW-7R for jfs-discussion@lists.sourceforge.net;
 Wed, 21 Feb 2024 10:34:33 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 0137C1FB4E;
 Wed, 21 Feb 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1708511662; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HCjnOHa77sD0Hwc3gx9J1PdVfdTw1xdGiol8HKEHfNI=;
 b=2ENIgR1fdsqjy0a5hEkVQTZadOfqraTfcm8fWl9HB/jCo9SaSshMmUVpgh+x5J8C04Fbd4
 6gH1MCoqiFHAnBzZr5OGL+tbDAMLqP9b246eHTPqlKCOlj7LhMBaiMzv8izXvpj3SWCg4U
 WOTDbmndjUpfwQHhVJCTH7oyxl/QX7I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1708511662;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HCjnOHa77sD0Hwc3gx9J1PdVfdTw1xdGiol8HKEHfNI=;
 b=tQtXydgGZrv69ajxmzvYd+UnVfBHcAnpOWwPywIVRiXk0B7i6d/Y7PDNEU+Y6Ge94C0Hby
 V2u7GkLuXD0uOKAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1708511662; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HCjnOHa77sD0Hwc3gx9J1PdVfdTw1xdGiol8HKEHfNI=;
 b=2ENIgR1fdsqjy0a5hEkVQTZadOfqraTfcm8fWl9HB/jCo9SaSshMmUVpgh+x5J8C04Fbd4
 6gH1MCoqiFHAnBzZr5OGL+tbDAMLqP9b246eHTPqlKCOlj7LhMBaiMzv8izXvpj3SWCg4U
 WOTDbmndjUpfwQHhVJCTH7oyxl/QX7I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1708511662;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=HCjnOHa77sD0Hwc3gx9J1PdVfdTw1xdGiol8HKEHfNI=;
 b=tQtXydgGZrv69ajxmzvYd+UnVfBHcAnpOWwPywIVRiXk0B7i6d/Y7PDNEU+Y6Ge94C0Hby
 V2u7GkLuXD0uOKAw==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id E781B139D1;
 Wed, 21 Feb 2024 10:34:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id Gyh6OK3R1WWPFwAAn2gu4w
 (envelope-from <jack@suse.cz>); Wed, 21 Feb 2024 10:34:21 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 9D0F6A0807; Wed, 21 Feb 2024 11:34:17 +0100 (CET)
Date: Wed, 21 Feb 2024 11:34:17 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+cf96fe0f87933d5cd68a@syzkaller.appspotmail.com>
Message-ID: <20240221103417.v4zrc2bzw6zq7npi@quack3>
References: <0000000000005f876b06075a4936@google.com>
 <0000000000004a34ce0611d33dfa@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000004a34ce0611d33dfa@google.com>
X-Spam-Level: *
X-Spamd-Bar: +
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=2ENIgR1f;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=tQtXydgG
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [1.48 / 50.00]; RCVD_VIA_SMTP_AUTH(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:98:from];
 TO_DN_SOME(0.00)[]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_TRACE(0.00)[suse.cz:+]; MX_GOOD(-0.01)[];
 RCPT_COUNT_SEVEN(0.00)[10]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 BAYES_HAM(-0.01)[45.73%]; SUBJECT_HAS_QUESTION(0.00)[];
 ARC_NA(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=7a5682d32a74b423];
 TAGGED_RCPT(0.00)[cf96fe0f87933d5cd68a];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,suse.cz:dkim,suse.cz:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-Spam-Score: 1.48
X-Rspamd-Queue-Id: 0137C1FB4E
X-Spam-Flag: NO
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 20-02-24 09:07:04, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcjvn-0006PW-7R
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in lmLogClose
 (2)
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
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 postmaster@duagon.onmicrosoft.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue 20-02-24 09:07:04, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14cf63d0180000
> start commit:   b78b18fb8ee1 Merge tag 'erofs-for-6.6-rc5-fixes' of git://..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=7a5682d32a74b423
> dashboard link: https://syzkaller.appspot.com/bug?extid=cf96fe0f87933d5cd68a
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=120a1c45680000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1230440e680000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

OK, no working repro.

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
