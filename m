Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2CE82BDFE
	for <lists+jfs-discussion@lfdr.de>; Fri, 12 Jan 2024 11:00:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rOEKm-0007h1-7P;
	Fri, 12 Jan 2024 10:00:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rOEKg-0007gt-Lx
 for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jan 2024 10:00:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FBVSPSStzukEuy78v0iO713Dp6S4Tr9jYl8yIfg303o=; b=GhcSkao9uZ4Bk/OA2SVCIntCy1
 UKgFzaW21XWZu0HqSNljrtKvTZ16Om4vsh9MulCppHkPUfM6c8DNgDkqw8Hzoqi6KXBG+chBZ75gI
 +bZbrllGfsm+CAlc2BVjNWi6QiIIOVxSLalSp5/+7nhv3VuYcpufsx4Zgx4Xn1FThows=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FBVSPSStzukEuy78v0iO713Dp6S4Tr9jYl8yIfg303o=; b=ClBw3ZrWueRRRGb4HxG5VjVEsu
 VxQWYDXWJlBQNvzhM4XBKfSiHBR1c2SphmRyRiLDRfwH8K402WSDca/v+uWHUt+3YOnROrNRiImWD
 QXpXeI0wZBa10Q9Tl8zrF+yIg5sEwgNr+4pCzKbrmYDLrIrXbUD4IzlpGoyo5SFkISGk=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rOEKa-0003gA-Qz for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jan 2024 10:00:10 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id B123A1FC24;
 Fri, 12 Jan 2024 09:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705053589; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FBVSPSStzukEuy78v0iO713Dp6S4Tr9jYl8yIfg303o=;
 b=LVPhsoZzrqmaIPxbO3hJzEKngFpRGRxhzEkLBJqX+H4UMHywFzgWicWjUcr+tHtOrnPKuE
 QtSvulQBOfynuRShDr9OezhwezW664d/eipB7f8XntSfTuC5f+Y+9uvuzw1Vtmw9fYqjyH
 bLqK5UKY0Fi0FwsPc40I+B6U1b34+c4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705053589;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FBVSPSStzukEuy78v0iO713Dp6S4Tr9jYl8yIfg303o=;
 b=BTnLs+7K8qJ85T0XdQ/Ii+GrHsCuvh5oZb/cGkclZY4pD+OF61lQgeZDf+cAqTA01Ncu4G
 2nWOLgf2UxbYS4Cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705053589; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FBVSPSStzukEuy78v0iO713Dp6S4Tr9jYl8yIfg303o=;
 b=LVPhsoZzrqmaIPxbO3hJzEKngFpRGRxhzEkLBJqX+H4UMHywFzgWicWjUcr+tHtOrnPKuE
 QtSvulQBOfynuRShDr9OezhwezW664d/eipB7f8XntSfTuC5f+Y+9uvuzw1Vtmw9fYqjyH
 bLqK5UKY0Fi0FwsPc40I+B6U1b34+c4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705053589;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FBVSPSStzukEuy78v0iO713Dp6S4Tr9jYl8yIfg303o=;
 b=BTnLs+7K8qJ85T0XdQ/Ii+GrHsCuvh5oZb/cGkclZY4pD+OF61lQgeZDf+cAqTA01Ncu4G
 2nWOLgf2UxbYS4Cw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A4FF413782;
 Fri, 12 Jan 2024 09:59:49 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id c5tAKJUNoWUZPQAAD6G6ig
 (envelope-from <jack@suse.cz>); Fri, 12 Jan 2024 09:59:49 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 5633AA0802; Fri, 12 Jan 2024 10:59:45 +0100 (CET)
Date: Fri, 12 Jan 2024 10:59:45 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+172bdd582e5d63486948@syzkaller.appspotmail.com>
Message-ID: <20240112095945.oxx42ycamfouw3xs@quack3>
References: <000000000000ff4a1505e9f961a2@google.com>
 <000000000000ccb6c6060eb767bd@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000ccb6c6060eb767bd@google.com>
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=LVPhsoZz;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=BTnLs+7K
X-Spamd-Result: default: False [2.69 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 BAYES_HAM(-0.00)[24.04%]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=ea03ca45176080bc];
 TAGGED_RCPT(0.00)[172bdd582e5d63486948];
 MIME_GOOD(-0.10)[text/plain]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.cz:+]; MX_GOOD(-0.01)[];
 RCPT_COUNT_SEVEN(0.00)[9];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:dkim,suse.cz:email,suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Score: 2.69
X-Rspamd-Queue-Id: B123A1FC24
X-Spam-Level: **
X-Spam-Flag: NO
X-Spamd-Bar: ++
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 11-01-24 19:39:03, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rOEKa-0003gA-Qz
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] general protection fault in
 dtSplitUp
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

On Thu 11-01-24 19:39:03, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1268fc69e80000
> start commit:   a70385240892 Merge tag 'perf_urgent_for_v6.1_rc2' of git:/..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=ea03ca45176080bc
> dashboard link: https://syzkaller.appspot.com/bug?extid=172bdd582e5d63486948
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15692dba880000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15017b2c880000
> 
> If the result looks correct, please mark the issue as fixed by replying with:
 
Makes sense. When I'm looking at the dashboard I can see there's another
(older) reproducer which is not marked as not reproducing anymore. I
suppose this is because syzbot tests only the latest reproducer? Anyway,
let's close this, if syzbot can find another reproducer for the problem
with writes to mounted devices disabled, it'll surely tell us :)

#syz fix: fs: Block writes to mounted block devices

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
