Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 358C285A293
	for <lists+jfs-discussion@lfdr.de>; Mon, 19 Feb 2024 12:56:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rc2G0-00028E-8J;
	Mon, 19 Feb 2024 11:56:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rc2Fy-00022J-Hu
 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Feb 2024 11:56:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M0IoGNXF9cQZCZYZwVTpF79rld9vp/bZIPPNKytiUpQ=; b=EooZAfU5UaMbKrakSueq3c43hM
 Y1WASItfknSKepIu0WInqSabtiEB1jRcIg46Qql6KGwR5+T3marfg+fi8E58f3nDEh9VL30JldClW
 g3zhV+PRe6t7Z+4GQgtHAXcOwLWXrEYHJtoKK56bXw4Ymnfd7/9WKcKJvZjjBheoO23k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M0IoGNXF9cQZCZYZwVTpF79rld9vp/bZIPPNKytiUpQ=; b=YqQG/z+l7Y/jGxhV2Nq7WtRTLt
 a6PAMSq3uuvKeww52vKU5arx8TRGWfREx+NXzlJ4y2iUYLoNDDMq6ZHgMU7VAgQIMmp65QWKwzG5t
 m5aN1MCrVW0XDGBT6kNykE1QpFxzr7KDE/38UxAFczy4naTBYyE6s9mkAPTqdGhFuZ/s=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rc2Fx-0007dq-1b for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Feb 2024 11:56:23 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id EB9582231D;
 Mon, 19 Feb 2024 11:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1708343775; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M0IoGNXF9cQZCZYZwVTpF79rld9vp/bZIPPNKytiUpQ=;
 b=gMfhQGjOI+lbem8SkpG7abYXZG/YGgsbr5mfhTFEt32zW1Limui820XncUd3JP4Jf/4cjb
 Ki2fipqnH6aZNqggQcrRBpvej5RFxm3Gf1k4azm8OzeBA2Zjorl5by+Ny2VFQpP4sFWCTW
 VqPFtogMpHtYR6RLlotNkKPFguE/0+0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1708343775;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M0IoGNXF9cQZCZYZwVTpF79rld9vp/bZIPPNKytiUpQ=;
 b=CW3k+AASubWZUsX7BEFpJjYNb6M0up0wqB5uWYsyR6VxJvrC9ZCwXfu8YryV9Fd8VAXOri
 5XB31zaQdMHLrYBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1708343773; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M0IoGNXF9cQZCZYZwVTpF79rld9vp/bZIPPNKytiUpQ=;
 b=buau6+K+bHQBAEbQguScoIcRxtFI0j7HwT8gHAUdxEJUUcZwmnLmx902BD6L4pg2FD/uw8
 iCK1i7I3hf+0dC8b2q7Hc5ZRYKfDNUhrLEW5N2oQRMZEqKm6yoU+zPYXXkCHXnUVuq6BV7
 /ZFSsvDjjx6glmdQ6+bnmSX5XxMvZto=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1708343773;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=M0IoGNXF9cQZCZYZwVTpF79rld9vp/bZIPPNKytiUpQ=;
 b=t31G6cyP2MTxAh//4JyTp9UpLAj2jDCsgF5zz0fCnkkhDX77LFRDdUwQO793OeIuKrM0Lb
 wjIs1K4uYH4qxVAw==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id DE64213585;
 Mon, 19 Feb 2024 11:56:13 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id gFdGNt1B02U2cAAAn2gu4w
 (envelope-from <jack@suse.cz>); Mon, 19 Feb 2024 11:56:13 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 92E02A0806; Mon, 19 Feb 2024 12:56:13 +0100 (CET)
Date: Mon, 19 Feb 2024 12:56:13 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+84c274731411665e6c52@syzkaller.appspotmail.com>
Message-ID: <20240219115613.frzm7ttf7vfdy3xo@quack3>
References: <0000000000004f9dd605eabee6dc@google.com>
 <00000000000056790c0611b5548c@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00000000000056790c0611b5548c@google.com>
Authentication-Results: smtp-out1.suse.de;
	none
X-Spam-Level: *
X-Spam-Score: 1.69
X-Spamd-Result: default: False [1.69 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.01)[47.63%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4];
 TAGGED_RCPT(0.00)[84c274731411665e6c52];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 RCVD_COUNT_THREE(0.00)[3];
 R_RATELIMIT(0.00)[to_ip_from(RLpdan7qhx516wxzbnn3a3f9z9)];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; RCPT_COUNT_TWELVE(0.00)[13];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun 18-02-24 21:26:01, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rc2Fx-0007dq-1b
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in
 __get_metapage
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
 syzkaller-bugs@googlegroups.com, damien.lemoal@opensource.wdc.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net, willy@infradead.org,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, kch@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sun 18-02-24 21:26:01, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=13310158180000
> start commit:   1b929c02afd3 Linux 6.2-rc1
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=68e0be42c8ee4bb4
> dashboard link: https://syzkaller.appspot.com/bug?extid=84c274731411665e6c52
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1702dc54480000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13b9eaf4480000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

No working repro and this is JFS. So:
 
#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
