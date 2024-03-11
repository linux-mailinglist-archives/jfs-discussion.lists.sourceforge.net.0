Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A74878593
	for <lists+jfs-discussion@lfdr.de>; Mon, 11 Mar 2024 17:37:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rjieJ-0004Tf-0j;
	Mon, 11 Mar 2024 16:37:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rjieI-0004TY-AS
 for jfs-discussion@lists.sourceforge.net;
 Mon, 11 Mar 2024 16:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p/OdawrM0/sD3T/Xgs0TctF7VC0mNp6IkRXxs28E6/k=; b=OvpONygKU3OoWcN0HJd0xq+i/e
 Ak5q+GY19nn3cDLlCOb0DR1DiAuFYeWeJqVKWa22sizR7tPlnMbE335Y0IeZSywWUATHqdwNLYajW
 X9xoIXPInAz3ZKYZMv/Ir7O0jLXK2Hd8DDVWGxs3ldQom0b9qh084tEZG7YZD9tM9nyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p/OdawrM0/sD3T/Xgs0TctF7VC0mNp6IkRXxs28E6/k=; b=GhflOyvsSzUD1TPoIg1BUTiwxl
 cMwNA/tO4v8WZ0kbE3CXWhldlFS9Q7A0gAV7hyUTn2V/1bOiRaV1MQ4EuNOp9wqatG6Yw70QL4Z8T
 SKvlFnvYokAVS/9aSkudwAw82G23YfxZIJRk2gNpZ3jKdyL9umgL5i8yXV6DdhvpbKgM=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rjie2-0000ru-TV for jfs-discussion@lists.sourceforge.net;
 Mon, 11 Mar 2024 16:37:14 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 838A65C947;
 Mon, 11 Mar 2024 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710175013; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p/OdawrM0/sD3T/Xgs0TctF7VC0mNp6IkRXxs28E6/k=;
 b=safowM3Zv9IxdQWGsBm+1guipc3dFuJb7IRL46o5AVXrYWBcDZqdEEHFmAANyZl/1AGvm2
 YjzAh73eMOJOD03TWu4bTXXNFCAj5R8J7k8ZG/f1fQeLLiMaQoy6dvpVgLdAzC1xdu2rR8
 t5Hky/2x5b2YQM5X05DSCaZ2xLURRwc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710175013;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p/OdawrM0/sD3T/Xgs0TctF7VC0mNp6IkRXxs28E6/k=;
 b=VKQWZ1kAIWFfAROpw/O9gtxwYeEezlLDN5LRWV8fYSziAr2JsjdQ7G2Xz/b9DGNXJhZ6in
 Z8IX3g5Z2uyHtkCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1710175013; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p/OdawrM0/sD3T/Xgs0TctF7VC0mNp6IkRXxs28E6/k=;
 b=safowM3Zv9IxdQWGsBm+1guipc3dFuJb7IRL46o5AVXrYWBcDZqdEEHFmAANyZl/1AGvm2
 YjzAh73eMOJOD03TWu4bTXXNFCAj5R8J7k8ZG/f1fQeLLiMaQoy6dvpVgLdAzC1xdu2rR8
 t5Hky/2x5b2YQM5X05DSCaZ2xLURRwc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1710175013;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p/OdawrM0/sD3T/Xgs0TctF7VC0mNp6IkRXxs28E6/k=;
 b=VKQWZ1kAIWFfAROpw/O9gtxwYeEezlLDN5LRWV8fYSziAr2JsjdQ7G2Xz/b9DGNXJhZ6in
 Z8IX3g5Z2uyHtkCA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 777BF136BA;
 Mon, 11 Mar 2024 16:36:53 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id Iu8hHSUz72V+GQAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 11 Mar 2024 16:36:53 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 209D5A0807; Mon, 11 Mar 2024 17:36:53 +0100 (CET)
Date: Mon, 11 Mar 2024 17:36:53 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+c853277dcbfa2182e9aa@syzkaller.appspotmail.com>
Message-ID: <20240311163653.67zyxohwwohi32rq@quack3>
References: <0000000000007898e505e9971783@google.com>
 <0000000000003becc106134ed015@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000003becc106134ed015@google.com>
X-Spam-Level: **
Authentication-Results: smtp-out2.suse.de;
	none
X-Spamd-Result: default: False [2.89 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.01)[49.42%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=7474de833c217bf4];
 TAGGED_RCPT(0.00)[c853277dcbfa2182e9aa];
 MIME_GOOD(-0.10)[text/plain]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_SEVEN(0.00)[9];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Score: 2.89
X-Spam-Flag: NO
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun 10-03-24 06:58:02, syzbot wrote: > syzbot suspects
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rjie2-0000ru-TV
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] BUG: unable to handle kernel
 NULL pointer dereference in dtInsertEntry
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

On Sun 10-03-24 06:58:02, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=16cb0da6180000
> start commit:   a4d7d7011219 Merge tag 'spi-fix-v6.4-rc5' of git://git.ker..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=7474de833c217bf4
> dashboard link: https://syzkaller.appspot.com/bug?extid=c853277dcbfa2182e9aa
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15cc622d280000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1762cf83280000
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
