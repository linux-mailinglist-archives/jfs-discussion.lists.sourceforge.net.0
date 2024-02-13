Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E6ABE852DCF
	for <lists+jfs-discussion@lfdr.de>; Tue, 13 Feb 2024 11:25:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rZpyO-00033Y-1t;
	Tue, 13 Feb 2024 10:25:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rZpyM-00033S-Bc
 for jfs-discussion@lists.sourceforge.net;
 Tue, 13 Feb 2024 10:25:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D+EOo/LZjqjoBiGIO35YpPDhSE1PM8je1VBpRIQoP9E=; b=d81caIHiz+WSmC88mmTBSMHolf
 VC5aN08oXWMpk77JE+tXFLSt25nKqLwNranBU07RyINvNFYRTvbhqhWGLOhtqq5CVLEsewO7dF5d0
 TbkA8V5katTrt0cbceX06r2SudEf0Z1ZUD18z9U94p0ztx0dSsxuhX8Z6DGw36wn07ng=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=D+EOo/LZjqjoBiGIO35YpPDhSE1PM8je1VBpRIQoP9E=; b=gaHXbVTbd1QvhUefss2gJqOE92
 2dt94XuyPoP/hUob5C/yxAWJ3ZCodoVHuRGl8bKcrqB2qfGhfy7voKttBZ9TuI1UCTPXAwexGfvXZ
 TcecEk8pflkjTvaGMnfkKPXA5X+rFucJOM843cvAKg6zk1F2DIerpd0Kl55wfuYawYQU=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rZpyI-0002aW-Tp for jfs-discussion@lists.sourceforge.net;
 Tue, 13 Feb 2024 10:25:07 +0000
Received: from imap2.dmz-prg2.suse.org (imap2.dmz-prg2.suse.org [10.150.64.98])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 2C70F21AF9;
 Tue, 13 Feb 2024 10:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1707819897; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=D+EOo/LZjqjoBiGIO35YpPDhSE1PM8je1VBpRIQoP9E=;
 b=ifQFy0mGwGLrHpV/xSCP56UDnp2SneI9HOeX9fz+w7LJAdksM8IBn1kU6xPM4MAdAOjtrN
 VO087TBOe2pS2zLAsWSkmmEwBO11NsHwkQkKeK7nmNp4M9ccJ2jjlqusMqmzEOrW2pHUAX
 GpgGBuZuZQDMiVW2BBnpnUOUNduLMLE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1707819897;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=D+EOo/LZjqjoBiGIO35YpPDhSE1PM8je1VBpRIQoP9E=;
 b=nvlxOnInRBsTSIDx17rdanYOnEpnFy4h8DEr33R1Y9pX4twIIBACjGVC6OI5Ls2hCU4E62
 qltp8EHFCkgKoqDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1707819895; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=D+EOo/LZjqjoBiGIO35YpPDhSE1PM8je1VBpRIQoP9E=;
 b=1gexvepVjjvIz9naX2X3CupPsSxffFxprbb8lYtlW4cIMwFVM3/u05KUm6rYGRJobHvGsW
 wbczL2gpAuQt9solOqoxQWJGTwXL4VZUmEPtyRkuhB2xXiFWAAaE87VQKHUdH/UtUvJ+Wc
 IPceu4VT0hWxJWiHpF9OqUyDeXVCI90=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1707819895;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=D+EOo/LZjqjoBiGIO35YpPDhSE1PM8je1VBpRIQoP9E=;
 b=wJg3G2YaOHFR8SBxvPVQMl1c0hY6n6beWhyVoCVlTh0k9Cj2tAaSqWW+We+x7D9s1quzyk
 aPxEy8Mdmrwh5rBg==
Received: from imap2.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap2.dmz-prg2.suse.org (Postfix) with ESMTPS id 221EB1329E;
 Tue, 13 Feb 2024 10:24:55 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
 by imap2.dmz-prg2.suse.org with ESMTPSA id 2XxNCHdDy2UYMQAAn2gu4w
 (envelope-from <jack@suse.cz>); Tue, 13 Feb 2024 10:24:55 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id CC187A0809; Tue, 13 Feb 2024 11:24:46 +0100 (CET)
Date: Tue, 13 Feb 2024 11:24:46 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+451384fb192454e258de@syzkaller.appspotmail.com>
Message-ID: <20240213102446.pctcff4txs7cikce@quack3>
References: <00000000000079c7640604eefa47@google.com>
 <0000000000009bd5560611401f9d@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0000000000009bd5560611401f9d@google.com>
Authentication-Results: smtp-out1.suse.de;
	none
X-Spamd-Result: default: False [2.87 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.03)[56.88%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=ff0db7a15ba54ead];
 TAGGED_RCPT(0.00)[451384fb192454e258de];
 MIME_GOOD(-0.10)[text/plain]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_SEVEN(0.00)[9];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:email,suse.com:email,syzkaller.appspot.com:url];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Spam-Level: **
X-Spam-Score: 2.87
X-Spam-Flag: NO
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue 13-02-24 01:36:06, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rZpyI-0002aW-Tp
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txLock
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

On Tue 13-02-24 01:36:06, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1588d6ec180000
> start commit:   65d6e954e378 Merge tag 'gfs2-v6.5-rc5-fixes' of git://git...
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=ff0db7a15ba54ead
> dashboard link: https://syzkaller.appspot.com/bug?extid=451384fb192454e258de
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=140b48c8680000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15276fb8680000
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
