Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0912874AD8
	for <lists+jfs-discussion@lfdr.de>; Thu,  7 Mar 2024 10:28:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1riA30-0003EO-31;
	Thu, 07 Mar 2024 09:28:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1riA2y-0003EI-TB
 for jfs-discussion@lists.sourceforge.net;
 Thu, 07 Mar 2024 09:28:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g+ugExIOwHThY92Q+DIFd3j6pfBZQ+SQxZDMAbZwm3k=; b=YpHGNZ24tUz7KFgBkmhYU/0wSo
 tToRzqSwzGeuD1Z3z6WUpnuzq+yS1qwmhfCFogcDqeqsoSEf6Esf7igm399ont7f+ZO6DQr9gjWLM
 GqlbWm5U3KToqDHlfKw5awJs2e7xOInVUwuN8mnwUUyfyYXH188X3ER9RHd6apjO/thQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g+ugExIOwHThY92Q+DIFd3j6pfBZQ+SQxZDMAbZwm3k=; b=M7hPHTmL/sHLi90wMDr0rHP9bc
 1SL4Uv4/eKUVzebF9UiotGX3KJFXuMDROdTyoNMuEnBQH0kWz6rZLgWNjY2SLUizviYgfAuD3cXi4
 8u9T8mMNV5OUj8kB6QEL8kfoC3to0pU6bsbX++mNzd2Uf6LvmKOC9xiPNdXpVsvgR7IE=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1riA2q-0002YO-QG for jfs-discussion@lists.sourceforge.net;
 Thu, 07 Mar 2024 09:28:17 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 7B18734D3C;
 Thu,  7 Mar 2024 09:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1709803517; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=g+ugExIOwHThY92Q+DIFd3j6pfBZQ+SQxZDMAbZwm3k=;
 b=e6w0vWuGi9jbOVMgCGKn594YJFgf0EUGg3FVUT/cZYTZs4RxSZY10A4rLDMCZhaRyH3Qyd
 fD8mDN/KWRukdjuxI2Vahe9tT0cxwMWmMMGbxwMNk1lGwM66JNJT5hyGrGg1gKWvtHAYXx
 Vs1YifDzT1BWdG1JzUtj8SSohPkOHE0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1709803517;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=g+ugExIOwHThY92Q+DIFd3j6pfBZQ+SQxZDMAbZwm3k=;
 b=S/AQk1ksNINSe/dxm9r3vJubFKxB7C9PQTEEvTf9P+jv4YlF9MTNc+wYbSBGb54qAHbMNf
 SBdbv87Q9FzV9ACg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1709803517; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=g+ugExIOwHThY92Q+DIFd3j6pfBZQ+SQxZDMAbZwm3k=;
 b=e6w0vWuGi9jbOVMgCGKn594YJFgf0EUGg3FVUT/cZYTZs4RxSZY10A4rLDMCZhaRyH3Qyd
 fD8mDN/KWRukdjuxI2Vahe9tT0cxwMWmMMGbxwMNk1lGwM66JNJT5hyGrGg1gKWvtHAYXx
 Vs1YifDzT1BWdG1JzUtj8SSohPkOHE0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1709803517;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=g+ugExIOwHThY92Q+DIFd3j6pfBZQ+SQxZDMAbZwm3k=;
 b=S/AQk1ksNINSe/dxm9r3vJubFKxB7C9PQTEEvTf9P+jv4YlF9MTNc+wYbSBGb54qAHbMNf
 SBdbv87Q9FzV9ACg==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 67388132A4;
 Thu,  7 Mar 2024 09:25:17 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id kgPiGP2H6WUoGwAAn2gu4w
 (envelope-from <jack@suse.cz>); Thu, 07 Mar 2024 09:25:17 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 1DEA8A0803; Thu,  7 Mar 2024 10:25:17 +0100 (CET)
Date: Thu, 7 Mar 2024 10:25:17 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+ca4b16c6465dca321d40@syzkaller.appspotmail.com>
Message-ID: <20240307092517.clgkvqttd4rw6dx5@quack3>
References: <000000000000c801280606a82e95@google.com>
 <0000000000006786560612c32ff9@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000006786560612c32ff9@google.com>
Authentication-Results: smtp-out1.suse.de;
	none
X-Spam-Level: *
X-Spam-Score: 1.69
X-Spamd-Result: default: False [1.69 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.01)[45.41%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=b6602324d4e5a4a9];
 TAGGED_RCPT(0.00)[ca4b16c6465dca321d40];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; RCPT_COUNT_SEVEN(0.00)[9];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:email,suse.com:email,syzkaller.appspot.com:url];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun 03-03-24 07:23:03, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1riA2q-0002YO-QG
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: trying to register
 non-static key in txEnd
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
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun 03-03-24 07:23:03, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=14e0e374180000
> start commit:   c7402612e2e6 Merge tag 'net-6.7-rc6' of git://git.kernel.o..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=b6602324d4e5a4a9
> dashboard link: https://syzkaller.appspot.com/bug?extid=ca4b16c6465dca321d40
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16941c8ae80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13d9c3c1e80000
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
