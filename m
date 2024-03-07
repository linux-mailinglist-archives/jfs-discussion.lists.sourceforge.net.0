Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA74874AF0
	for <lists+jfs-discussion@lfdr.de>; Thu,  7 Mar 2024 10:35:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1riA9w-0003V8-PW;
	Thu, 07 Mar 2024 09:35:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1riA9v-0003Uz-4M
 for jfs-discussion@lists.sourceforge.net;
 Thu, 07 Mar 2024 09:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=o2ffif3HoV85jCDMYVvYbxmoEMlvsTn1OSr+PumVWrU=; b=DPrvSovzUGtcFzpNcn/dVxJAg/
 xerI46ZE0FHjadQjGrAtbobvLDEL52Ju0We2IM1UuM/HrfAWe8wSc/bk0U1h5oxyvzMlqdMjt5w44
 TbgzZhtWyovgYZMStq+kZUFhCvstdFcntQD9HHBMREwvexcQLxY8DuL+7Te2IYNkBkjo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o2ffif3HoV85jCDMYVvYbxmoEMlvsTn1OSr+PumVWrU=; b=mGG9fmBKYn2/vQ4t189Z8NLwZE
 cJvhtKfHJCCW6118ty2aEUC/0X4BgaoKc4JTlZamNbSBFnFCHGUb+8CQA9mLw0zyFU9AgzgUS7SdO
 XZ1aR3OX8H9lwCbbFf427vpgwXjsIqAFccsag8lmF93x6DGvDOp/2oU1kSQSCoaN8q/A=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1riA9o-0002om-Gt for jfs-discussion@lists.sourceforge.net;
 Thu, 07 Mar 2024 09:35:27 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id B295D38451;
 Thu,  7 Mar 2024 09:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1709804034; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=o2ffif3HoV85jCDMYVvYbxmoEMlvsTn1OSr+PumVWrU=;
 b=BH2bNC8h0nt/s82r0bM3xqHETjC6ocLimIvsGBV3cnnx1vCkldUNcMSVDFjiJH377cMYPG
 kwnpYepqmXK/QgTVd5vArT+xkKPH4iU+jVYU6DXR0jwV3KXq0R9DXFRlOrZQfuZe/I8YBW
 gIQbQE4j6cM49KESbh5o7Un1bVyAtvg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1709804034;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=o2ffif3HoV85jCDMYVvYbxmoEMlvsTn1OSr+PumVWrU=;
 b=jYgYr5504nqdZZxSuWdxJyU7WR0mNnzx8fXeJFEAuM9dEBoeAS4+GbADD6tiBoYwXJJ5aV
 eiEn+IW0E4lHMKBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1709804034; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=o2ffif3HoV85jCDMYVvYbxmoEMlvsTn1OSr+PumVWrU=;
 b=BH2bNC8h0nt/s82r0bM3xqHETjC6ocLimIvsGBV3cnnx1vCkldUNcMSVDFjiJH377cMYPG
 kwnpYepqmXK/QgTVd5vArT+xkKPH4iU+jVYU6DXR0jwV3KXq0R9DXFRlOrZQfuZe/I8YBW
 gIQbQE4j6cM49KESbh5o7Un1bVyAtvg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1709804034;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=o2ffif3HoV85jCDMYVvYbxmoEMlvsTn1OSr+PumVWrU=;
 b=jYgYr5504nqdZZxSuWdxJyU7WR0mNnzx8fXeJFEAuM9dEBoeAS4+GbADD6tiBoYwXJJ5aV
 eiEn+IW0E4lHMKBA==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id A5A6B132A4;
 Thu,  7 Mar 2024 09:33:54 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id FrUuKAKK6WVBHQAAn2gu4w
 (envelope-from <jack@suse.cz>); Thu, 07 Mar 2024 09:33:54 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 46780A0803; Thu,  7 Mar 2024 10:33:54 +0100 (CET)
Date: Thu, 7 Mar 2024 10:33:54 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+f328fbf8718edb712341@syzkaller.appspotmail.com>
Message-ID: <20240307093354.x2u5agzzl7awypvd@quack3>
References: <000000000000c4c9f105f2107386@google.com>
 <00000000000099ff3f0612cda952@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00000000000099ff3f0612cda952@google.com>
X-Spamd-Bar: ++
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=BH2bNC8h;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=jYgYr550
X-Spamd-Result: default: False [2.63 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 BAYES_HAM(-0.06)[61.21%]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=6d0f369ef5fb88c9];
 TAGGED_RCPT(0.00)[f328fbf8718edb712341];
 MIME_GOOD(-0.10)[text/plain]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.cz:+]; MX_GOOD(-0.01)[];
 RCPT_COUNT_SEVEN(0.00)[9];
 DBL_BLOCKED_OPENRESOLVER(0.00)[syzkaller.appspot.com:url,suse.cz:email,suse.cz:dkim,suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Score: 2.63
X-Spam-Level: **
X-Rspamd-Queue-Id: B295D38451
X-Spam-Flag: NO
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun 03-03-24 19:53:03, syzbot wrote: > syzbot suspects
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1riA9o-0002om-Gt
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] KASAN: slab-out-of-bounds Read
 in jfs_readdir
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

On Sun 03-03-24 19:53:03, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16b9e3ca180000
> start commit:   2772d7df3c93 Merge tag 'riscv-for-linus-6.5-rc2' of git://..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=6d0f369ef5fb88c9
> dashboard link: https://syzkaller.appspot.com/bug?extid=f328fbf8718edb712341
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10233f38a80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11d35c1aa80000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

Likely corrupted fs so that logdev == fsdev and this fixed it. We could
perhaps add some sanity checking but does anybody care enough about JFS?
 
#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
