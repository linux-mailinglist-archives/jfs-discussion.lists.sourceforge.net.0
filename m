Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7EA82D858
	for <lists+jfs-discussion@lfdr.de>; Mon, 15 Jan 2024 12:31:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPLBH-0006nF-3E;
	Mon, 15 Jan 2024 11:31:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rPLBF-0006mn-6U
 for jfs-discussion@lists.sourceforge.net;
 Mon, 15 Jan 2024 11:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ds0QNZdlqOPWM3wbiQOUG4rSsjMSm36pA7PawZRmBsQ=; b=XeCwEwBzITtVcsPpdlwf9vyCrY
 DRT/Zzm0GlHdgqjxLSyOtpCHsiP4qb2mkXbrixRkFgTRUKGvzhvHfdiJuwvRJu/EIf/U1IyPS1oNM
 PtgZKhHQ1ijGGtwbTiIvO4mlSiqtlPba9cs1N7WDTRFqYIe1p33S+Z7TgpNE9Ng/+i80=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ds0QNZdlqOPWM3wbiQOUG4rSsjMSm36pA7PawZRmBsQ=; b=Tx0GpQzS0HKg2tZHHklb+HtBBa
 hSfE0eWeXb4gysevnFjIDr1pWUGFBoGg0cv6UFvsows30ggpOnBFUuRMrhSGYbx512a/2o+dEFiYc
 S6KjPMzWobr4vDMIPKD96IleEnK8Ul4Jbdq5hLgWkeu7qnynqJ9GYlgs1rwWFwa8sL60=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rPLB6-0003UL-R0 for jfs-discussion@lists.sourceforge.net;
 Mon, 15 Jan 2024 11:31:01 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 7928C1F8AA;
 Mon, 15 Jan 2024 11:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705318237; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ds0QNZdlqOPWM3wbiQOUG4rSsjMSm36pA7PawZRmBsQ=;
 b=ZOeTiQzgPG8a/6cCLSQq7I6S7pMWL6yHQ2I54XwXl9owzF3eMVTjzSXDvVSNKva3fuwKQN
 GY7ziMTYo0bAFPHAVzxLZ1tnTSvmHiVY0PMZu0Hd0zRPslumOsKcvpZigPD0pzOh9Iippf
 M6xMFUTjq2dm/l8NCN6uUCUDK7QiBig=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705318237;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ds0QNZdlqOPWM3wbiQOUG4rSsjMSm36pA7PawZRmBsQ=;
 b=SYeCE1MlmyIGUkI6htYZDGN2UMfQCYApyzBv2LrzpsGe5AOhk5fcuw4RvZ16zt6+249OJz
 PkYSNAY22Vu8TmCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705318236; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ds0QNZdlqOPWM3wbiQOUG4rSsjMSm36pA7PawZRmBsQ=;
 b=0LUkx/s3v+D/Of5qr+0Gb4jEUf3Eagrj9cZWvmcQuAFgKIObfB5ycV1xcmHswXNOSNXnX1
 RO7uE1Bs2VuK7MrI17rTxA+gDUOnSYrN9CuUTyXqxy7RfXOMh2Jsfo37t5QGU0ysIOw3TS
 Cr0aNQvdK2ozcNqPUcf0Q/amNtqxY4A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705318236;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ds0QNZdlqOPWM3wbiQOUG4rSsjMSm36pA7PawZRmBsQ=;
 b=vVs3ogSYAcHdWhQhauBRc2Rc5HTxq2aDPKel0gEYkGm1p1pgA10qINxdZLDkF8GeSp4C/x
 eZeozyLDGQbbhoDg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 6E9C913712;
 Mon, 15 Jan 2024 11:30:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id kCj8GlwXpWVAPQAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 15 Jan 2024 11:30:36 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 2067FA07F7; Mon, 15 Jan 2024 12:30:36 +0100 (CET)
Date: Mon, 15 Jan 2024 12:30:36 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+3699edf4da1e736b317b@syzkaller.appspotmail.com>
Message-ID: <20240115113036.bkgeheh3556cy7g6@quack3>
References: <0000000000009e798305fe8e95ac@google.com>
 <00000000000032d485060ec9b172@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00000000000032d485060ec9b172@google.com>
X-Spam-Level: *
X-Spamd-Bar: +
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b="0LUkx/s3";
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=vVs3ogSY
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [1.30 / 50.00]; RCVD_VIA_SMTP_AUTH(0.00)[];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 TO_DN_SOME(0.00)[]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_TRACE(0.00)[suse.cz:+]; MX_GOOD(-0.01)[];
 RCPT_COUNT_SEVEN(0.00)[9]; NEURAL_HAM_SHORT(-0.20)[-1.000];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 BAYES_HAM(-0.19)[70.91%]; SUBJECT_HAS_QUESTION(0.00)[];
 ARC_NA(0.00)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 FROM_HAS_DN(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=e74b395fe4978721];
 TAGGED_RCPT(0.00)[3699edf4da1e736b317b];
 MIME_GOOD(-0.10)[text/plain]; NEURAL_HAM_LONG(-1.00)[-1.000];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email];
 FUZZY_BLOCKED(0.00)[rspamd.com]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-Spam-Score: 1.30
X-Rspamd-Queue-Id: 7928C1F8AA
X-Spam-Flag: NO
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri 12-01-24 17:28:04, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rPLB6-0003UL-R0
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] kernel BUG in txEnd
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

On Fri 12-01-24 17:28:04, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=1280b62be80000
> start commit:   692b7dc87ca6 Merge tag 'hyperv-fixes-signed-20230619' of g..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=e74b395fe4978721
> dashboard link: https://syzkaller.appspot.com/bug?extid=3699edf4da1e736b317b
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=16b373a7280000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1749e8f3280000
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
