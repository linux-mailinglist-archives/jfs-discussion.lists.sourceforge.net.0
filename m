Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE76E832994
	for <lists+jfs-discussion@lfdr.de>; Fri, 19 Jan 2024 13:36:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rQo6E-0004iR-9O;
	Fri, 19 Jan 2024 12:35:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1rQo6C-0004iH-Tw
 for jfs-discussion@lists.sourceforge.net;
 Fri, 19 Jan 2024 12:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sU34e5h97GyB4Ieq5hCIWgoIR3p0l2c/abRaH0dJLdU=; b=AxoOGLSK03XWb199O9V9wxAlIC
 F1JP4coEgtlrSJ0Z4tDid3iZeg6tl4rncDrfEhuS3Un3xPjldmIEHvcbLqmjhpDR0fDN1XPY2o74T
 sW8c7ki+5Wb5f6cOx8i4Kiw51AnHdZJM02hF6EyaxDroT3k5eRmcGh9j/LY83oye2Ukk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sU34e5h97GyB4Ieq5hCIWgoIR3p0l2c/abRaH0dJLdU=; b=JE+frTyfoXEV6+L36I3W9gvepN
 l4KY2zqfbzq9r9fQHKO7SAzPOGMKUG22kI6L/E6e2jXGn0xUof9GKBiyJWi5PzZvIJWRtrcT+HTgi
 ixepa/q3o1+EX5NrToI4fsFhN8OIpbe0UxJU4KmOEyXB7F13GOzLICfMnMdZFwTF0/kA=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rQo67-0004BF-4H for jfs-discussion@lists.sourceforge.net;
 Fri, 19 Jan 2024 12:35:52 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 988731FD12;
 Fri, 19 Jan 2024 12:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705667739; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sU34e5h97GyB4Ieq5hCIWgoIR3p0l2c/abRaH0dJLdU=;
 b=PIHLZzXQscL8ilb/su55FeqP+6NLQxlTf8JT4rYUkl/QKbpDt8VPGrB9PhZQRy7qlFOcCd
 9ZxrhzuuuppabX+Nz8e/RtlnYzFqwukVAGVr1y75vqKmTv0OHMJPowGOifO2GTvmjCpIaI
 UQr505l5Vo34Wtb2k+G8QEePBhtN1kg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705667739;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sU34e5h97GyB4Ieq5hCIWgoIR3p0l2c/abRaH0dJLdU=;
 b=TyvIawtrrb+VKlnoLFwjoK/wBmqSj8HDPhHbCYhNDEZnfQla8zKMnDiwOdTWBvN3dV4oc2
 /omv+eDX1T0aWZBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1705667739; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sU34e5h97GyB4Ieq5hCIWgoIR3p0l2c/abRaH0dJLdU=;
 b=PIHLZzXQscL8ilb/su55FeqP+6NLQxlTf8JT4rYUkl/QKbpDt8VPGrB9PhZQRy7qlFOcCd
 9ZxrhzuuuppabX+Nz8e/RtlnYzFqwukVAGVr1y75vqKmTv0OHMJPowGOifO2GTvmjCpIaI
 UQr505l5Vo34Wtb2k+G8QEePBhtN1kg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1705667739;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sU34e5h97GyB4Ieq5hCIWgoIR3p0l2c/abRaH0dJLdU=;
 b=TyvIawtrrb+VKlnoLFwjoK/wBmqSj8HDPhHbCYhNDEZnfQla8zKMnDiwOdTWBvN3dV4oc2
 /omv+eDX1T0aWZBA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 88B6813894;
 Fri, 19 Jan 2024 12:35:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id X4pXIZtsqmVSDQAAD6G6ig
 (envelope-from <jack@suse.cz>); Fri, 19 Jan 2024 12:35:39 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 0E04AA0803; Fri, 19 Jan 2024 13:35:39 +0100 (CET)
Date: Fri, 19 Jan 2024 13:35:39 +0100
From: Jan Kara <jack@suse.cz>
To: syzbot <syzbot+5dd35da975e32d9df9ab@syzkaller.appspotmail.com>
Message-ID: <20240119123539.xgws46tptxbrzavq@quack3>
References: <000000000000e38e4105e9d6e741@google.com>
 <000000000000ab49d0060f4719a4@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000ab49d0060f4719a4@google.com>
Authentication-Results: smtp-out2.suse.de;
	none
X-Spamd-Result: default: False [2.86 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; BAYES_HAM(-0.04)[59.02%];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 URI_HIDDEN_PATH(1.00)[https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5];
 TAGGED_RCPT(0.00)[5dd35da975e32d9df9ab];
 MIME_GOOD(-0.10)[text/plain]; RCVD_COUNT_THREE(0.00)[3];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_SEVEN(0.00)[9];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,syzkaller.appspot.com:url];
 FUZZY_BLOCKED(0.00)[rspamd.com]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_TLS_ALL(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-Spam-Level: **
X-Spam-Score: 2.86
X-Spam-Flag: NO
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu 18-01-24 23:05:07, syzbot wrote: > syzbot suspects
 this issue was fixed by commit: > > commit
 6f861765464f43a71462d52026fbddfc858239a5
 > Author: Jan Kara <jack@suse.cz> > Date: Wed Nov 1 17:43: [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rQo67-0004BF-4H
Subject: Re: [Jfs-discussion] [syzbot] [jfs] WARNING in ea_get
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

On Thu 18-01-24 23:05:07, syzbot wrote:
> syzbot suspects this issue was fixed by commit:
> 
> commit 6f861765464f43a71462d52026fbddfc858239a5
> Author: Jan Kara <jack@suse.cz>
> Date:   Wed Nov 1 17:43:10 2023 +0000
> 
>     fs: Block writes to mounted block devices
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=12b95fdbe80000
> start commit:   49c13ed0316d Merge tag 'soc-fixes-6.0-rc7' of git://git.ke..
> git tree:       upstream
> kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
> dashboard link: https://syzkaller.appspot.com/bug?extid=5dd35da975e32d9df9ab
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1173d7ff080000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=16a2ea70880000
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
