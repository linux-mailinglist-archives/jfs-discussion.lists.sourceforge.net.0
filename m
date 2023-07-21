Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D38575D63B
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Jul 2023 23:12:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMxQ9-0000ie-GZ;
	Fri, 21 Jul 2023 21:12:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tom@talpey.com>) id 1qMxQ7-0000iW-PQ
 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 21:12:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FMReQEkIFEjPAgutBYp/ak/SllM5PtcvUIEYVh081Vs=; b=FQZZDbkmReDElSGtssWKNAJiCM
 g8sPJUCdrTUkjZQ0dkPDkg30sz3at1fgnYyLnz2Mpo1mBwOS1Mqt/vYNAk1LvRv1pGYh0H5mEpb3U
 OC7E0nIaLuTStyXerrfv8ub3gfwoXLoyVgC7fKyv43qlvj9lKofxNclN7t2IgTIY086g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FMReQEkIFEjPAgutBYp/ak/SllM5PtcvUIEYVh081Vs=; b=gzlA/e2kqaPmYwkCamdnvjTtX6
 CC93a+S2GUtyqbH17CwsQRyawr8FqPzyB5dMD3dqBmoMvYpmrfoLiIeRHEbZYhNBmffDqLJMLq+y4
 ZT061yTIbgE6sjxoDwwQqz0S6chLwbuIcO35rfQ8MseUXXA8iV5UDmvcB+W/gnFZAI0s=;
Received: from mail.rcn.syn-alias.com ([129.213.13.252] helo=smtp.rcn.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMxQ7-0008RG-7o for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 21:12:16 +0000
X-Authed-Username: dG10YWxwZXlAcmNuLmNvbQ==
Authentication-Results: smtp01.rcn.email-ash1.sync.lan smtp.user=<hidden>;
 auth=pass (PLAIN)
Received: from [96.237.161.173] ([96.237.161.173:54288] helo=[192.168.0.206])
 by smtp.rcn.com (envelope-from <tom@talpey.com>)
 (ecelerity 4.4.0.19839 r(msys-ecelerity:tags/4.4.0.0^0)) with ESMTPSA
 (cipher=AES128-GCM-SHA256) 
 id 57/A4-05333-7A4FAB46; Fri, 21 Jul 2023 17:12:07 -0400
Message-ID: <6e006cd2-181e-bc68-7eb7-d59d162ef3c7@talpey.com>
Date: Fri, 21 Jul 2023 17:12:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Paulo Alcantara <pc@manguebit.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey>
 <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
 <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com>
 <ZLnJzUynpTBvZGtA@gallifrey>
 <f8f4a2c5-05d3-0b2d-688f-b3274a98fc73@talpey.com>
 <ZLrxYzGXJzsLmGDs@gallifrey>
 <16f50dff126af9b20f9b99ca056ad5fa.pc@manguebit.com>
From: Tom Talpey <tom@talpey.com>
In-Reply-To: <16f50dff126af9b20f9b99ca056ad5fa.pc@manguebit.com>
X-Vade-Verdict: clean
X-Vade-Analysis-1: gggruggvucftvghtrhhoucdtuddrgedviedrhedvgdduheefucetufdoteggodetrfdotffvucfrrhho
X-Vade-Analysis-2: fhhilhgvmecuufgjpfetvefqtfdptfevpfdpgffpggdqtfevpfdpqfgfvfenuceurghilhhouhhtmecu
X-Vade-Analysis-3: fedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvvehfhfgj
X-Vade-Analysis-4: tgfgsehtjeertddtfeejnecuhfhrohhmpefvohhmucfvrghlphgvhicuoehtohhmsehtrghlphgvhidr
X-Vade-Analysis-5: tghomheqnecuggftrfgrthhtvghrnhepfeekfefftefffedvieegheektdeuveeitddvgeejudeiffff
X-Vade-Analysis-6: feevkeegvdduveetnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdptghhvggtkhhprghttghhrdhp
X-Vade-Analysis-7: lhenucfkphepleeirddvfeejrdduiedurddujeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
X-Vade-Analysis-8: rghmpehinhgvthepleeirddvfeejrdduiedurddujeefpdhhvghloheplgduledvrdduieekrddtrddv
X-Vade-Analysis-9: tdeingdpmhgrihhlfhhrohhmpehtohhmsehtrghlphgvhidrtghomhdprhgtphhtthhopehptgesmhgr
X-Vade-Analysis-10: nhhguhgvsghithdrtghomhdprhgtphhtthhopehlihhnuhigsehtrhgvsghlihhgrdhorhhgpdhrtghp
X-Vade-Analysis-11: thhtohepuggrvhgvrdhklhgvihhkrghmphesohhrrggtlhgvrdgtohhmpdhrtghpthhtohepshhmfhhr
X-Vade-Analysis-12: vghntghhsehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhinhhkihhnjhgvohhnsehkvghrnhgvlhdr
X-Vade-Analysis-13: ohhrghdprhgtphhtthhopehshhgrghhghieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhu
X-Vade-Analysis-14: gidqtghifhhssehvghgvrhdrkhgvrhhnvghlrdhorhhg
X-Vade-Client: RCN
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/21/2023 5:06 PM, Paulo Alcantara wrote: > "Dr. David
 Alan Gilbert" <linux@treblig.org> writes: > >>
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/checkpatch.pl#n
 [...] Content analysis details:   (-1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [129.213.13.252 listed in list.dnswl.org]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom; id=tom%40talpey.com;
 ip=129.213.13.252; r=util-spamd-1.v13.lw.sourceforge.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qMxQ7-0008RG-7o
Subject: Re: [Jfs-discussion] [PATCH v2 0/4] dedupe smb unicode files
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 shaggy@kernel.org, linux-kernel@vger.kernel.org,
 Steve French <smfrench@gmail.com>, krisman@collabora.com,
 linkinjeon@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 7/21/2023 5:06 PM, Paulo Alcantara wrote:
> "Dr. David Alan Gilbert" <linux@treblig.org> writes:
> 
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/checkpatch.pl#n3737
>> 	if ($realfile =~ /\.(h|s|S)$/) {
>> 		$comment = '/*';
>> 	} elsif ($realfile =~ /\.(c|rs|dts|dtsi)$/) {
>> 		$comment = '//';
>>
>> I don't get where that idea came from.
> 
> Check Documentation/process/license-rules.rst.

Ok, header files require a different SPDX comment syntax.
I withdraw the consistency comment!

Did I give it my R-B?

Reviewed-by: Tom Talpey <tom@talpey.com>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
