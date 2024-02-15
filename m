Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 68505856434
	for <lists+jfs-discussion@lfdr.de>; Thu, 15 Feb 2024 14:22:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rabgE-0004mh-7V;
	Thu, 15 Feb 2024 13:21:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rabgB-0004mY-Ff
 for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Feb 2024 13:21:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xm0Tb8e8noxuVf8MCl9TTXqq20dalcFNRaBn9WsQ6rs=; b=gACVY3LN+UR2Eo1AiEYkh+gXqm
 YCYa5/y0Y9KkMveyfh8oVmB4DM9W+SFo/uiFM/CCfB5uofTBOhGHN266w/4je3c2QomcRyxoOtUeH
 5PweT4kVGIkez48RSxPUVapKLJr4iGp+1bNeuQbW/xYcsFzEjnBzLJROEhLWMMvIAdXg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xm0Tb8e8noxuVf8MCl9TTXqq20dalcFNRaBn9WsQ6rs=; b=JqtsvapBYx2yuHA/2jFC4h0Dds
 QnjABHSQadc4PS5FsnuBPuyloBrG6ENDsYrbms7qM4WEafaXNDOGahBfG0R+bSdAp/m7iJuE1R4SA
 ofNC4gLttFSAWHMpBzM8nA7yNQiWwNx6cVOXv/Usc8D//SMCF1++n8k/xa8coOsPeXig=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rabg8-0002w3-C1 for jfs-discussion@lists.sourceforge.net;
 Thu, 15 Feb 2024 13:21:32 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 4F0381F8A4;
 Thu, 15 Feb 2024 13:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1708003280; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xm0Tb8e8noxuVf8MCl9TTXqq20dalcFNRaBn9WsQ6rs=;
 b=BFnvSgDo7Q2HACJulBf+Ey8iBoUsKoC4LDtDilbW21o2MQsbuhq1hK9+Wp4NpfwyDDLW0S
 nY3P7Otb0pnNQMJPm9pUFkvY5uMPqVtQCFBBUM51zxaMj1VMy1TrBwQGMH+cZBrLaodyFu
 rA+jnCfR+e+XFt3Fq3oPMoRR+nlA8b0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1708003280;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xm0Tb8e8noxuVf8MCl9TTXqq20dalcFNRaBn9WsQ6rs=;
 b=+LD7b1lBuqfbsRedQhmt6VxGkigvNNAaq3lQEOnBrW6eRsgdEF4frThpDPW6Vh29uso6a0
 vf8U4Ux1Oid68ZBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1708003280; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xm0Tb8e8noxuVf8MCl9TTXqq20dalcFNRaBn9WsQ6rs=;
 b=BFnvSgDo7Q2HACJulBf+Ey8iBoUsKoC4LDtDilbW21o2MQsbuhq1hK9+Wp4NpfwyDDLW0S
 nY3P7Otb0pnNQMJPm9pUFkvY5uMPqVtQCFBBUM51zxaMj1VMy1TrBwQGMH+cZBrLaodyFu
 rA+jnCfR+e+XFt3Fq3oPMoRR+nlA8b0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1708003280;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xm0Tb8e8noxuVf8MCl9TTXqq20dalcFNRaBn9WsQ6rs=;
 b=+LD7b1lBuqfbsRedQhmt6VxGkigvNNAaq3lQEOnBrW6eRsgdEF4frThpDPW6Vh29uso6a0
 vf8U4Ux1Oid68ZBA==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 42E48139D0;
 Thu, 15 Feb 2024 13:21:20 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id umJRENAPzmXlGAAAn2gu4w
 (envelope-from <jack@suse.cz>); Thu, 15 Feb 2024 13:21:20 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id EC959A0809; Thu, 15 Feb 2024 14:21:19 +0100 (CET)
Date: Thu, 15 Feb 2024 14:21:19 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+3f6ef04b7cf85153b528@syzkaller.appspotmail.com>
Message-ID: <20240215132119.gtxttrj3jsft2hwe@quack3>
References: <000000000000a3818b05f18916e0@google.com>
 <00000000000018f2c806116ae6d3@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00000000000018f2c806116ae6d3@google.com>
Authentication-Results: smtp-out2.suse.de;
	none
X-Spamd-Result: default: False [2.87 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.03)[55.33%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=9688428cfef5e8d5];
 TAGGED_RCPT(0.00)[3f6ef04b7cf85153b528];
 MIME_GOOD(-0.10)[text/plain]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_SEVEN(0.00)[10];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Level: **
X-Spam-Score: 2.87
X-Spam-Flag: NO
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 15-02-24 04:38:04, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rabg8-0002w3-C1
Subject: Re: [Jfs-discussion] [syzbot] [reiserfs?] BUG: unable to handle
 kernel paging request in reiserfs_readdir_inode
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
 reiserfs-devel@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu 15-02-24 04:38:04, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14ffd320180000
> start commit:   534293368afa Merge tag 'kbuild-fixes-v6.3' of git://git.ke..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=9688428cfef5e8d5
> dashboard link: https://syzkaller.appspot.com/bug?extid=3f6ef04b7cf85153b528
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=138d82bac80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1123fed2c80000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

Frankly I don't see the reproducer doing anything suspicious but since we
have no reproducer and this is reiserfs:

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
