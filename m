Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D80B38A952E
	for <lists+jfs-discussion@lfdr.de>; Thu, 18 Apr 2024 10:41:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rxNKH-0001Dh-NC;
	Thu, 18 Apr 2024 08:41:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rxNKE-0001DH-HK
 for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Apr 2024 08:40:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YB3NxYWvxKO43qWNxBH78FaNL0CiJ3shRN52lzmNfoc=; b=c7lO7//xK041RED8tA1Z82Efx5
 5atU7sjXwLAaAzLQ4u98rLTsncHEcmls/lJrkEnK0S8JwB5Jr8ycuiIKa1DkV3FlbeUPlk6NJWj0r
 ID6arsVqbxynttiVndIt8nYsb5dF/0ReYfwx1UHPUktkXOeGtOJPrN02OWAkbKNRAo70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YB3NxYWvxKO43qWNxBH78FaNL0CiJ3shRN52lzmNfoc=; b=RlakV8xUI742YYRdGeFkpgKIOn
 fmwsvqhn3rJtKaIfM/bDE0A3+cN8n01fiwype32DuucBm+s5S7E2XCaEfl51EFy2jGIss1ruCEv7W
 00zkGFFt6u9ksw+15+x1VwHfFJJiZbP6h+yaFu1RNi2dXC9BUa6QzR/R8P2ijbnwSWBo=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rxNKE-0007Te-8n for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Apr 2024 08:40:59 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id A48B95C704;
 Thu, 18 Apr 2024 08:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1713429651; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YB3NxYWvxKO43qWNxBH78FaNL0CiJ3shRN52lzmNfoc=;
 b=1BWkcHrDEHsc+S0BGcomYHj1wRGh9+7Ah1M2UpiuPJpc2ggocrf+OwZPBqgjlNUN8MVJA4
 b9any/cHbhDRz1dpUAefxCkalNBxmNX65eR7gmqbgWUmy+M0rWiLUz72TuZO/WGxK4je2K
 6WtUCqJujuHjT/7hicoTDGnUYBqv/FQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1713429651;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YB3NxYWvxKO43qWNxBH78FaNL0CiJ3shRN52lzmNfoc=;
 b=2m/dGrmKWlibD+hqyauqHnyeR0rajguj/kyMJBTDRan+VU9q7NTwGKzwl2fVx2rteDVaqE
 xbSnPLQBddonmEDQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=1BWkcHrD;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b="2m/dGrmK"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1713429651; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YB3NxYWvxKO43qWNxBH78FaNL0CiJ3shRN52lzmNfoc=;
 b=1BWkcHrDEHsc+S0BGcomYHj1wRGh9+7Ah1M2UpiuPJpc2ggocrf+OwZPBqgjlNUN8MVJA4
 b9any/cHbhDRz1dpUAefxCkalNBxmNX65eR7gmqbgWUmy+M0rWiLUz72TuZO/WGxK4je2K
 6WtUCqJujuHjT/7hicoTDGnUYBqv/FQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1713429651;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=YB3NxYWvxKO43qWNxBH78FaNL0CiJ3shRN52lzmNfoc=;
 b=2m/dGrmKWlibD+hqyauqHnyeR0rajguj/kyMJBTDRan+VU9q7NTwGKzwl2fVx2rteDVaqE
 xbSnPLQBddonmEDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 98DEE13687;
 Thu, 18 Apr 2024 08:40:51 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id YE1RJZPcIGadJgAAD6G6ig
 (envelope-from <jack@suse.cz>); Thu, 18 Apr 2024 08:40:51 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 5287CA0812; Thu, 18 Apr 2024 10:40:51 +0200 (CEST)
Date: Thu, 18 Apr 2024 10:40:51 +0200
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+9157524e62303fd7b21c@syzkaller.appspotmail.com>
Message-ID: <20240418084051.esp56zy6ncoay3g2@quack3>
References: <000000000000e21aa80604153281@google.com>
 <000000000000a4f241061659def0@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000a4f241061659def0@google.com>
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Level: 
X-Spamd-Result: default: False [0.06 / 50.00]; SUSPICIOUS_RECIPS(1.50)[];
 BAYES_HAM(-1.43)[91.18%];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=1b32f62c755c3a9c];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; RCVD_COUNT_THREE(0.00)[3];
 MIME_TRACE(0.00)[0:+]; TO_DN_SOME(0.00)[];
 FUZZY_BLOCKED(0.00)[rspamd.com]; ARC_NA(0.00)[];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:dkim,suse.cz:email,suse.com:email,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 DWL_DNSWL_BLOCKED(0.00)[suse.cz:dkim]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[9]; RCVD_VIA_SMTP_AUTH(0.00)[];
 TAGGED_RCPT(0.00)[9157524e62303fd7b21c];
 DKIM_TRACE(0.00)[suse.cz:+]; MISSING_XM_UA(0.00)[];
 SUBJECT_HAS_QUESTION(0.00)[]
X-Rspamd-Queue-Id: A48B95C704
X-Spam-Flag: NO
X-Spam-Score: 0.06
X-Spamd-Bar: /
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 18-04-24 00:25:03, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.cz]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rxNKE-0007Te-8n
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] INFO: task hung in
 jfs_commit_inode (2)
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

On Thu 18-04-24 00:25:03, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=155eb8f7180000
> start commit:   4f9e7fabf864 Merge tag 'trace-v6.5-rc6' of git://git.kerne..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=1b32f62c755c3a9c
> dashboard link: https://syzkaller.appspot.com/bug?extid=9157524e62303fd7b21c
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=101aff5ba80000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14d78db0680000
> 
> If the result looks correct, please mark the issue as fixed by replying with:

Looks unlikely. The reproducer just mounts the jfs image and then a fuse
image...

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
