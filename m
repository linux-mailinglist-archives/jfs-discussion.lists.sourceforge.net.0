Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CDAAFE2A0
	for <lists+jfs-discussion@lfdr.de>; Wed,  9 Jul 2025 10:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HWa5imP0TmVkJiZEXt8o8Quh9GS0rY1ZUbo4giiVfDo=; b=JmW7iPuJd0/LVTxnBlGeWg5DzW
	X9e9X0qEvZrIhu0LdkPyX3KufTrF61DUC78clR4dO7wlmyhnDvgxcJccauZD4d2JGzDx/XqDxfTiC
	YlLAnfgMkR3lSmgxEiejUhwLirVeFEeu1R+ML/8BgBtqlbN4eg7d7S6ky5JQOFCMiIx4=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uZQCB-0000J1-Ns;
	Wed, 09 Jul 2025 08:30:27 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1uZQC9-0000Iu-Nv
 for jfs-discussion@lists.sourceforge.net;
 Wed, 09 Jul 2025 08:30:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LBtMeClq9et3DEqdyjTbORBR+uMKXpuRTSSshQUU8BE=; b=JrXHsF/UaxtbtjBh+usHfGhSXO
 2ghKL79YGwHNWaZGJbqL1Vwg5iTjERxdf9zF99kl0W8YeJCDy9HeU1TS+cP2ide9JNR6bg6s29PoV
 JNjaaHlveVN99ghDg9v58HYCP51TgehAVlZR33/De323fKOROAp0152i7vunJx1nacV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LBtMeClq9et3DEqdyjTbORBR+uMKXpuRTSSshQUU8BE=; b=lIDYSbx6zN6zSjg8H/fsatSTut
 c3yh7Rg6Eh0jPHVCOUx20/79smltkhnkJ1kmTVmEZ5vdwJAmm4utcsCPVovS5DJquTOCXMRrQKsKc
 Taa//iywZZWc35N3QOdcOcL/MtrpEFkLcdZpLnnMvkQACe3fA0GNhoQVFWNrmK7ZFXY0=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uZQC8-0006Th-PZ for jfs-discussion@lists.sourceforge.net;
 Wed, 09 Jul 2025 08:30:25 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 2B14F1F451;
 Wed,  9 Jul 2025 08:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1752049813; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LBtMeClq9et3DEqdyjTbORBR+uMKXpuRTSSshQUU8BE=;
 b=Be+jc9tFF949Eqs0IlZGKfYGnmZOuITNhKADSaOR1D7/e3fVkN3foBlRIW0E9X1y13Ml0p
 QWQH+KjEJ4/9I2rwpxBlpGC8MTdOdiamenqItI2Jy4AAM8tBWf2uxL9UjnMwoLphD9T2mi
 C+aRPaCKt6ahbQntXDS2GT9ihRLnPRw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1752049813;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LBtMeClq9et3DEqdyjTbORBR+uMKXpuRTSSshQUU8BE=;
 b=tS8aZpEcl35FTprEbjA9f4nCiIEVM0X3VCiIVSTtOVCSjUWr9QOenH+UzAdx2EXj98+wn4
 eqKElJ/SxszzbiDg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1752049813; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LBtMeClq9et3DEqdyjTbORBR+uMKXpuRTSSshQUU8BE=;
 b=Be+jc9tFF949Eqs0IlZGKfYGnmZOuITNhKADSaOR1D7/e3fVkN3foBlRIW0E9X1y13Ml0p
 QWQH+KjEJ4/9I2rwpxBlpGC8MTdOdiamenqItI2Jy4AAM8tBWf2uxL9UjnMwoLphD9T2mi
 C+aRPaCKt6ahbQntXDS2GT9ihRLnPRw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1752049813;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LBtMeClq9et3DEqdyjTbORBR+uMKXpuRTSSshQUU8BE=;
 b=tS8aZpEcl35FTprEbjA9f4nCiIEVM0X3VCiIVSTtOVCSjUWr9QOenH+UzAdx2EXj98+wn4
 eqKElJ/SxszzbiDg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 1B24E13757;
 Wed,  9 Jul 2025 08:30:13 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id bWubBpUobmhSeQAAD6G6ig
 (envelope-from <jack@suse.cz>); Wed, 09 Jul 2025 08:30:13 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id C184AA099A; Wed,  9 Jul 2025 10:30:12 +0200 (CEST)
Date: Wed, 9 Jul 2025 10:30:12 +0200
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com>
Message-ID: <xrpmf6yj32iirfaumpbal6qxph7mkmgwtra7p4hpbvzozlp4zr@2bzl4p5ejgfj>
References: <686d5a9f.050a0220.1ffab7.0015.GAE@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <686d5a9f.050a0220.1ffab7.0015.GAE@google.com>
X-Spamd-Result: default: False [-1.30 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=72aa0474e3c3b9ac];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_COUNT_THREE(0.00)[3];
 URIBL_BLOCKED(0.00)[suse.com:email,imap1.dmz-prg2.suse.org:helo,storage.googleapis.com:url,syzkaller.appspot.com:url,appspotmail.com:email];
 ARC_NA(0.00)[]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 RCPT_COUNT_TWELVE(0.00)[14]; MIME_TRACE(0.00)[0:+];
 RCVD_TLS_LAST(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_DN_SOME(0.00)[]; SUBJECT_HAS_QUESTION(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[895c23f6917da440ed0d]; MISSING_XM_UA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[];
 FREEMAIL_CC(0.00)[kernel.org,suse.cz,gmail.com,vger.kernel.org,googlegroups.com,zeniv.linux.org.uk,paragon-software.com,lists.linux.dev,lists.sourceforge.net];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,
 storage.googleapis.com:url, suse.com:email]
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -1.30
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi! On Tue 08-07-25 10:51:27, syzbot wrote: > syzbot found
 the following issue on: > > HEAD commit: d7b8f8e20813 Linux 6.16-rc5 > git
 tree: upstream > console+strace: https://syzkaller.appspot.com/x/log.t [...]
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
X-Headers-End: 1uZQC8-0006Th-PZ
Subject: Re: [Jfs-discussion] [syzbot] [nilfs?] kernel BUG in may_open (2)
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
Cc: Dave Kleikamp <shaggy@kernel.org>, brauner@kernel.org,
 linux-nilfs@vger.kernel.org, jack@suse.cz, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 mjguzik@gmail.com, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev, konishi.ryusuke@gmail.com,
 jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi!

On Tue 08-07-25 10:51:27, syzbot wrote:
> syzbot found the following issue on:
> 
> HEAD commit:    d7b8f8e20813 Linux 6.16-rc5
> git tree:       upstream
> console+strace: https://syzkaller.appspot.com/x/log.txt?x=107e728c580000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=72aa0474e3c3b9ac
> dashboard link: https://syzkaller.appspot.com/bug?extid=895c23f6917da440ed0d
> compiler:       Debian clang version 20.1.7 (++20250616065708+6146a88f6049-1~exp1~20250616065826.132), Debian LLD 20.1.7
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=11305582580000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10952bd4580000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/605b3edeb031/disk-d7b8f8e2.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/a3cb6f3ea4a9/vmlinux-d7b8f8e2.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/cd9e0c6a9926/bzImage-d7b8f8e2.xz
> mounted in repro: https://storage.googleapis.com/syzbot-assets/2a7ab270a8da/mount_0.gz
> 
> The issue was bisected to:
> 
> commit af153bb63a336a7ca0d9c8ef4ca98119c5020030
> Author: Mateusz Guzik <mjguzik@gmail.com>
> Date:   Sun Feb 9 18:55:21 2025 +0000
> 
>     vfs: catch invalid modes in may_open()
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=17f94a8c580000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=14054a8c580000
> console output: https://syzkaller.appspot.com/x/log.txt?x=10054a8c580000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com
> Fixes: af153bb63a33 ("vfs: catch invalid modes in may_open()")
> 
> VFS_BUG_ON_INODE(!IS_ANON_FILE(inode)) encountered for inode ffff8880724735b8

FWIW the reproducer just mounts a filesystem image and opens a file there
which crashes because the inode type is invalid. Which suggests there's
insufficient validation of inode metadata (in particular the inode mode)
being loaded from the disk... There are reproducers in the syzbot dashboard
for nilfs2, ntfs3, isofs, jfs. I'll take care of isofs, added other
filesystem maintainers to CC.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
