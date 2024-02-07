Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7770C84C667
	for <lists+jfs-discussion@lfdr.de>; Wed,  7 Feb 2024 09:41:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rXdUY-0004Pd-UU;
	Wed, 07 Feb 2024 08:41:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rXdUX-0004PW-33
 for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Feb 2024 08:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R7q8iY10uoxfBBuRXr+Ei/C8akP0H6jzk/X1fqaQvQY=; b=BS2SrfW4qNpcHHi/eyOM+ka9co
 wiHTWdGj3NJyTprq86WIgZ7H29eniMR8SEzd0B/Ko/52dXxFfbDv/Rl67d1uxEpQqHbSXNzvGp0/w
 2KL6/eYEITBRao4+UKKsbHgl1sNwoG1v399e334ofRGBO+nijeTOcK8l8pem0wuwh7ik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R7q8iY10uoxfBBuRXr+Ei/C8akP0H6jzk/X1fqaQvQY=; b=RqMFA4QuXEKr0R2QN0UCCrqn1s
 NMJZuZSJV+ao4KBtKAqTt6w/pMHgPmyGPIf6P8P3PtXPuLqoTOWR995tnpgqsCerQy61Ymk+IXCt5
 28HH+nqKNvu0MvHY9j2nEJ7i3Vdp9sl1cZ2I0dGhMIAASdjTZjjMMxbSXntuiJvpBlTQ=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rXdUR-0000kM-Vs for jfs-discussion@lists.sourceforge.net;
 Wed, 07 Feb 2024 08:41:13 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 50666221D1;
 Wed,  7 Feb 2024 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1707295254; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R7q8iY10uoxfBBuRXr+Ei/C8akP0H6jzk/X1fqaQvQY=;
 b=uo2iAS4VHfmzbP8+sGhwxwBhz+ITGZl9aP7Eg4thsPHmTH4Q4BSFt0SmR80AT8NeCxoAE+
 ClThyH205khyJ4lwUie453vYGg/E21jtlQASqbOVwRoQtX3TbeTjfrnt6dUx5+zPfzdoDE
 xg/ZhFcksSLcX0jP2GVJUZBpq3i1oEg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1707295254;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R7q8iY10uoxfBBuRXr+Ei/C8akP0H6jzk/X1fqaQvQY=;
 b=g6lFN9sTD/PIiY3ic7OCv2L/NLz6tjpsciHv8cGE0TTVGwwBl5WNTHRilGSwbuertuNxWz
 /78FUB4U2yS1TMAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1707295254; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R7q8iY10uoxfBBuRXr+Ei/C8akP0H6jzk/X1fqaQvQY=;
 b=uo2iAS4VHfmzbP8+sGhwxwBhz+ITGZl9aP7Eg4thsPHmTH4Q4BSFt0SmR80AT8NeCxoAE+
 ClThyH205khyJ4lwUie453vYGg/E21jtlQASqbOVwRoQtX3TbeTjfrnt6dUx5+zPfzdoDE
 xg/ZhFcksSLcX0jP2GVJUZBpq3i1oEg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1707295254;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R7q8iY10uoxfBBuRXr+Ei/C8akP0H6jzk/X1fqaQvQY=;
 b=g6lFN9sTD/PIiY3ic7OCv2L/NLz6tjpsciHv8cGE0TTVGwwBl5WNTHRilGSwbuertuNxWz
 /78FUB4U2yS1TMAw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3EFF8139D8;
 Wed,  7 Feb 2024 08:40:54 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id pjggDxZCw2U6QwAAD6G6ig
 (envelope-from <jack@suse.cz>); Wed, 07 Feb 2024 08:40:54 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 9CC16A0809; Wed,  7 Feb 2024 09:40:53 +0100 (CET)
Date: Wed, 7 Feb 2024 09:40:53 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+9924e2a08d9ba0fd4ce2@syzkaller.appspotmail.com>
Message-ID: <20240207084053.ydlu3fnyzzvjpdr3@quack3>
References: <000000000000332a2505e981f474@google.com>
 <00000000000014c9ca0610b7aec6@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00000000000014c9ca0610b7aec6@google.com>
X-Spam-Level: *
X-Spamd-Bar: +
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=uo2iAS4V;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=g6lFN9sT
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [1.49 / 50.00]; RCVD_VIA_SMTP_AUTH(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 TO_DN_SOME(0.00)[];
 R_RATELIMIT(0.00)[to_ip_from(RLjmuxkameenh34oafz4d4fopd)];
 RCVD_COUNT_THREE(0.00)[3]; DKIM_TRACE(0.00)[suse.cz:+];
 MX_GOOD(-0.01)[]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 BAYES_HAM(-0.00)[33.64%]; SUBJECT_HAS_QUESTION(0.00)[];
 ARC_NA(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=b45dfd882e46ec91];
 TAGGED_RCPT(0.00)[9924e2a08d9ba0fd4ce2];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_TWELVE(0.00)[18];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; MID_RHS_NOT_FQDN(0.50)[];
 FREEMAIL_CC(0.00)[kernel.dk,kernel.org,linaro.org,oracle.com,gmail.com,suse.cz,lists.sourceforge.net,vger.kernel.org,lists.linuxfoundation.org,intel.com,lists.linux.dev,googlegroups.com];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-Spam-Score: 1.49
X-Rspamd-Queue-Id: 50666221D1
X-Spam-Flag: NO
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 06-02-24 06:49:05, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rXdUR-0000kM-Vs
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read
 in dtSearch
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
 lkp@intel.com, llvm@lists.linux.dev, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzkaller@googlegroups.com, oe-kbuild-all@lists.linux.dev,
 linux-fsdevel@vger.kernel.org, ghandatmanas@gmail.com,
 linux-kernel-mentees@lists.linuxfoundation.org, dan.carpenter@linaro.org,
 oe-kbuild@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue 06-02-24 06:49:05, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13767e8fe80000
> start commit:   bee0e7762ad2 Merge tag 'for-linus-iommufd' of git://git.ke..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=b45dfd882e46ec91
> dashboard link: https://syzkaller.appspot.com/bug?extid=9924e2a08d9ba0fd4ce2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=152bfc22e80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1608f4a2e80000
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
